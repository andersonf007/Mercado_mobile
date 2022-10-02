import 'package:mercado_poo/app/models/ProdutoVenda_models/produtoVenda_models.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/models/venda/venda_models.dart';
import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';
import 'package:mercado_poo/app/repositorios/pessoa_repositorio.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mercado_poo/app/repositorios/venda_repositorio.dart';
import 'package:mercado_poo/app/repositorios/vendedor_repositorio.dart';
import 'package:mobx/mobx.dart';
import 'package:intl/intl.dart';

part 'venda_store.g.dart';

class VendaStore = _VendaStoreBase with _$VendaStore;

abstract class _VendaStoreBase with Store {
  ProdutoRepositorio produtoRepositorio;
  VendaRepositorio vendaRepositorio;
  PessoaRepositorio pessoaRepositorio;
  VendedorRepositorio vendedorRepositorio;

  _VendaStoreBase(
      {required this.produtoRepositorio,
      required this.vendaRepositorio,
      required this.pessoaRepositorio,
      required this.vendedorRepositorio});

  @observable
  List<ProdutoVenda> listProdutoVenda = ObservableList.of([]);

  @observable
  List<Produto> listProduto = ObservableList.of([]);

  @observable
  List<Produto> resultList = ObservableList.of([]);

  @observable
  List<Vendedor> listVendedor = ObservableList.of([]);

  @observable
  List<Pessoa> listCliente = ObservableList.of([]);

  @observable
  Venda venda = Venda();

  @observable
  Produto produto = Produto();

  @observable
  Pessoa pessoa = Pessoa();

  @observable
  Vendedor vendedor = Vendedor();

  @observable
  bool isLoading = false;

  @observable
  bool isLoadingCliente = false;

  @observable
  bool isLoadingVendedor = false;

  @observable
  bool isLoadingInserirVenda = false;

  @observable
  int idCliente = 0;

  @observable
  int idVendedor = 0;

  @observable
  double valorTotal = 0.0;

  @observable  
  String dropdownValue = "";

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
   Future<void>  adicionarNaListaDeVenda(Produto produto, int quantidade) async {
    ProdutoVenda vendaItens = ProdutoVenda();
    vendaItens.produto = produto;
    vendaItens.qtdProdutos = quantidade;
    vendaItens.validade = produto.validade;
    vendaItens.valorTotal = (produto.valorVenda! * quantidade);
    listProdutoVenda.add(vendaItens);
    valorTotal += vendaItens.valorTotal!;    
  }

  Future<void> _buscarClientes() async {
    try{
      isLoadingCliente = true;
      listCliente.clear();
      var response = await pessoaRepositorio.BuscarTodosClientes();
      listCliente = ObservableList.of([...listCliente, ...response]);
      idCliente = listCliente.first.id == null ? 0 : listCliente.first.id!;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }

  Future<void> _buscarVendedores() async {
    try{  
      listVendedor.clear();
      var response = await vendedorRepositorio.BuscarTodosVendedores();
      listVendedor = ObservableList.of([...listVendedor, ...response]);
      idVendedor = listVendedor.first.id == null ? 0 : listVendedor.first.id!;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }

  @action
  Future<void> getdata() async {
    isLoading = true;
    await _buscarClientes();
    await _buscarVendedores();
    isLoading = false;
  }

  Future<void> finalizarVenda() async{    
    try{
      isLoadingInserirVenda = true;
      String horaVenda = DateFormat("dd/MM/yyyy").format(DateTime.now());
      venda.clienteVenda = await buscarPessoa(idCliente);
      venda.vendedorVenda = await buscarVendedor(idVendedor);
      venda.valorTotal = valorTotal;
      venda.formaPagamento = dropdownValue;
      venda.horaVenda = horaVenda;
      venda.produtosVenda = listProdutoVenda;
      await vendaRepositorio.inserirVenda(venda);
      isLoadingInserirVenda = false;
    }catch(e){
      isLoadingInserirVenda = false;
      return Future.error(e);
    }
  }

  Future<Pessoa> buscarPessoa(int id) async{
    for(var p in listCliente){
      if(p.id == id){
        return p;
      }
    }
    return Future.error("Fudeu");
  }

  Future<Vendedor> buscarVendedor(int id) async{
    for(var v in listVendedor){
      if(v.id == id){
        return v;
      }
    }
    return Future.error("Fudeu");
  }

  Future<void>  validarEstoque(Produto produto, int quantidade) async{
    for(int i = 0; i < resultList.length; i++){
      if(resultList[i].id == produto.id){
        resultList[i].quantidade =  resultList[i].quantidade! - quantidade;
      }
    }
  }
}
