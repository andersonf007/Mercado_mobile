import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'editarProduto_store.g.dart';

class EditarProdutoStore = _EditarProdutoStoreBase with _$EditarProdutoStore;
abstract class _EditarProdutoStoreBase with Store {

  final ProdutoRepositorio produtoRepositorio;
  _EditarProdutoStoreBase({required this.produtoRepositorio});
  @observable
  bool isLoading = false;

  @observable
  List<Produto> listProduto = ObservableList.of([]);

    @action
  Future<void> buscarProdutos() async{
    try{
      isLoading = true;
      listProduto.clear();
      listProduto = await produtoRepositorio.BuscarTodosProdutos();
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }

  Future<void> editarProduto(Produto produto) async{
    try{
      isLoading = true;
      await produtoRepositorio.editarProduto(produto);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }

    Future<void> delete(Produto produto) async{
    try{
      isLoading = true;
      await produtoRepositorio.delete(produto);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}