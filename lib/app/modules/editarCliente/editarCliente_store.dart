import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/repositorios/pessoa_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'editarCliente_store.g.dart';

class EditarClienteStore = _EditarClienteStoreBase with _$EditarClienteStore;
abstract class _EditarClienteStoreBase with Store {

  final PessoaRepositorio pessoaRepositorio;
  _EditarClienteStoreBase({required this.pessoaRepositorio});
  @observable
  bool isLoading = false;

  @observable
  List<Pessoa> listCliente = ObservableList.of([]);

  @action
  Future<void> buscarClientes() async{
    try{
      isLoading = true;
      listCliente = await pessoaRepositorio.BuscarTodosClientes();
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }

  @action
  Future<void> editarClientes(Pessoa cliente) async{
    try{
      isLoading = true;
      await pessoaRepositorio.editarPessoa(cliente);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}