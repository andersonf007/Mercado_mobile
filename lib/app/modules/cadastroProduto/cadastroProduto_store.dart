import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'cadastroProduto_store.g.dart';

class CadastroProdutoStore = _CadastroProdutoStoreBase with _$CadastroProdutoStore;
abstract class _CadastroProdutoStoreBase with Store {

  ProdutoRepositorio produtoRepositorio;
  _CadastroProdutoStoreBase({required this.produtoRepositorio});

  @observable
  bool isLoading = false;
  
  @observable
  Produto produto = Produto();


  @action
  Future<void> cadastrarProduto(Produto produto) async{
    try{
      isLoading = true;
      await produtoRepositorio.cadastrarProduto(produto);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  } 
     @action
  Future<Produto> buscarProduto(int id) async {
    try {
      isLoading = true;
      produto = await produtoRepositorio.buscarProduto(id);
      isLoading = false;
      return produto;
    } catch (e) {
      isLoading = false;
      return Future.error(e);
    }
  }
}