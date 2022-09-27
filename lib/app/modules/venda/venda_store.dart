import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/models/vendaItem_models/vendaItens_models.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mercado_poo/app/repositorios/venda_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'venda_store.g.dart';

class VendaStore = _VendaStoreBase with _$VendaStore;
abstract class _VendaStoreBase with Store {

  ProdutoRepositorio produtoRepositorio;
  VendaRepositorio vendaRepositorio;

  _VendaStoreBase({required this.produtoRepositorio, required this.vendaRepositorio});

  @observable
  List<VendaItens> listProdutoVenda =  ObservableList.of([]);

  @observable
  List<Produto> listProduto = ObservableList.of([]);

  @observable
  List<Produto> resultList = ObservableList.of([]);

  @observable
  Produto produto = Produto();

  @observable
  bool isLoading = false;
  
  @observable
  String error = '';

  @action
  Future<void> buscarTodosProdutos() async{
    try {
      error = '';
      isLoading = true;
      listProduto.clear();
      var response = await produtoRepositorio.BuscarTodosProdutos();
      listProduto = ObservableList.of([...listProduto, ...response]);
      resultList = listProduto;
      isLoading = false;
    } catch (e) {
      error = e.toString();
      isLoading = false;
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
      error = '';
      isLoading = true;
      produto = await produtoRepositorio.buscarProduto(id);
      isLoading = false;
    } catch (e) {
      error = e.toString();
      isLoading = false;
    }
  }

  @action
  Future<void> adicionarNaListaDeVenda(Produto produto, int quantidade) async{
    VendaItens vendaItens = VendaItens();
    vendaItens.produto = produto;
    vendaItens.qtdProdutos = quantidade;
    vendaItens.validade = produto.validade;
    vendaItens.valorTotal =  (produto.valorVenda! * quantidade);
    listProdutoVenda.add(vendaItens);
  }
}