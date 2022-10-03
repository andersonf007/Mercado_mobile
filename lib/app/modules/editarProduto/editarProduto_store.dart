import 'package:mobx/mobx.dart';

part 'editarProduto_store.g.dart';

class EditarProdutoStore = _EditarProdutoStoreBase with _$EditarProdutoStore;
abstract class _EditarProdutoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}