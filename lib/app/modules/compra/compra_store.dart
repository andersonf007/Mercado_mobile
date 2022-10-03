import 'package:mercado_poo/app/models/ProdutoCompra/produtoCompra.dart';
import 'package:mercado_poo/app/models/compra/compra_models.dart';
import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';
import 'package:mercado_poo/app/repositorios/compra_repositorio.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mobx/mobx.dart';
import 'package:intl/intl.dart';

part 'compra_store.g.dart';

class CompraStore = _CompraStoreBase with _$CompraStore;
abstract class _CompraStoreBase with Store {

  CompraRepositorio compraRepositorio;
  ProdutoRepositorio produtoRepositorio;
  FornecedorRepositorio fornecedorRepositorio;
 
 _CompraStoreBase({
    required this.compraRepositorio,
    required this.produtoRepositorio,
    required this.fornecedorRepositorio
 });
  @observable
  bool isLoading = false;

  @observable
  List<Produto> listProduto = ObservableList.of([]);  

  @observable
  List<Produto> resultList = ObservableList.of([]);

  @observable
  Produto produto = Produto();
  
  @observable
  List<ProdutoCompra> listProdutoCompra = ObservableList.of([]);

  @observable
  double valorTotalCompra = 0.0;

  @observable
  bool isLoadingInserirCompra = false;

  @observable
  Compra compra = Compra();

  @observable
  List<Fornecedor> listFornecedores = ObservableList.of([]);

  @observable
  bool isLoadingFornecedors = false;

  @observable
  int idFornecedor = 0;
  @action
  Future<void> buscarTodosProdutos() async {
    try {
      isLoading = true;
      listProduto.clear();
      var response = await produtoRepositorio.BuscarTodosProdutos();
      listProduto = ObservableList.of([...listProduto, ...response]);
      resultList = listProduto;
      isLoading = false;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }

  @action
  void getDocumentsBySearch(String value) {
    List<Produto> showResults = [];
    for (var document in listProduto) {
      var title = document.nome!.toLowerCase();
      if (title.contains(value.toLowerCase())) {
        showResults.add(document);
      }
    }
    if (value.isEmpty) {
      resultList = listProduto;
    } else {
      resultList = showResults;
    }
  }

  @action
  Future<void> buscarProduto(int id) async {
    try {
      isLoading = true;
      produto = await produtoRepositorio.buscarProduto(id);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }

  @action
   Future<void>  adicionarNaListaDeCompra(Produto produto, int quantidade) async {
    ProdutoCompra produtoCompra = ProdutoCompra();
    produtoCompra.produto = produto;
    produtoCompra.qtdProdutos = quantidade;
    produtoCompra.validade = produto.validade;
    produtoCompra.valorTotal = (produto.valorVenda! * quantidade);
    listProdutoCompra.add(produtoCompra);
    valorTotalCompra += produtoCompra.valorTotal!;    
  }
  @action
  Future<void> buscarFornecedores() async {
    try{
      isLoadingFornecedors = true;
      listFornecedores.clear();
      var response = await fornecedorRepositorio.buscarFornecedores();
      listFornecedores = ObservableList.of([...listFornecedores, ...response]);
      idFornecedor = listFornecedores.first.id == null ? 0 : listFornecedores.first.id!;
      isLoadingFornecedors = false;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }
  @action
  Future<Fornecedor> buscarFornecedor(int id) async{
    for(var f in listFornecedores){
      if(f.id == id){
        return f;
      }
    }
    return Future.error("Fudeu");
  }
  @action
  Future<void> finalizarCompra() async{
    try{
      isLoadingInserirCompra = true;
      String horaCompra = DateFormat("dd/MM/yyyy").format(DateTime.now());
      compra.fornecedorCompra = await buscarFornecedor(idFornecedor);
      compra.valorTotalCompra = valorTotalCompra;
      compra.horaCompra = horaCompra;
      compra.produtosCompra = listProdutoCompra;
      await compraRepositorio.inserirCompra(compra);
      isLoadingInserirCompra = false;
      isLoadingInserirCompra = false;
    }catch(e){
      isLoadingInserirCompra = false;
      return Future.error(e);
    }
  }
}