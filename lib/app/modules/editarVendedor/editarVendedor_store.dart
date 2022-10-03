import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';
import 'package:mercado_poo/app/repositorios/vendedor_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'editarVendedor_store.g.dart';

class EditarVendedorStore = _EditarVendedorStoreBase with _$EditarVendedorStore;
abstract class _EditarVendedorStoreBase with Store {

final VendedorRepositorio vendedorRepositorio;
_EditarVendedorStoreBase({required this.vendedorRepositorio});
  @observable
  bool isLoading = false;

  @observable
  List<Vendedor> listVendedor = ObservableList.of([]);
  
  @action
  Future<void> buscarVendedores() async{
    try{
      isLoading = true;
      listVendedor = await vendedorRepositorio.BuscarTodosVendedores();
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }

  @action
  Future<void> editarVendedor(Vendedor vendedor) async{
    try{
      isLoading = true;
      await vendedorRepositorio.editarVendedor(vendedor);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}