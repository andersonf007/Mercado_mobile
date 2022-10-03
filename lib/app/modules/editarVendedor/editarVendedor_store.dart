import 'package:mobx/mobx.dart';

part 'editarVendedor_store.g.dart';

class EditarVendedorStore = _EditarVendedorStoreBase with _$EditarVendedorStore;
abstract class _EditarVendedorStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}