import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';
import 'package:mobx/mobx.dart';

part 'editarFornecedor_store.g.dart';

class EditarFornecedorStore = _EditarFornecedorStoreBase with _$EditarFornecedorStore;
abstract class _EditarFornecedorStoreBase with Store {

  FornecedorRepositorio fornecedorRepositorio;

  _EditarFornecedorStoreBase({required this.fornecedorRepositorio});
  @observable
  bool isLoading = false;

  @observable
  List<Fornecedor> listFornecedor = ObservableList.of([]);

  @observable
  int idFornecedor = 0;

  @action
  Future<void> buscarFornecedores() async{
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

  Future<void> delete(Fornecedor fornecedor) async{
    try{
      isLoading = true;
      await fornecedorRepositorio.delete(fornecedor);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}