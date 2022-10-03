import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mobx/mobx.dart';

part 'editarProduto_store.g.dart';

class EditarProdutoStore = _EditarProdutoStoreBase with _$EditarProdutoStore;
abstract class _EditarProdutoStoreBase with Store {

  @observable
  bool isLoading = false;

  @observable
  List<Produto> listProduto = ObservableList.of([]);

    @action
  Future<void> buscarProdutos() async{
    try{
      isLoading = true;
      listFornecedor.clear();
      var response = await fornecedorRepositorio.buscarFornecedores();
      listFornecedor = ObservableList.of([...listFornecedor, ...response]);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }

  Future<void> editarFornecedor(Fornecedor fornecedor) async{
    try{
      isLoading = true;
      await fornecedorRepositorio.editarFornecedor(fornecedor);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}