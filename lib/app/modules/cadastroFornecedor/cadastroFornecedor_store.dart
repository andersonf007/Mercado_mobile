import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';
import 'package:mobx/mobx.dart';

part 'cadastroFornecedor_store.g.dart';

class CadastroFornecedorStore = _CadastroFornecedorStoreBase with _$CadastroFornecedorStore;
abstract class _CadastroFornecedorStoreBase with Store {

  FornecedorRepositorio fornecedorRepositorio;
  _CadastroFornecedorStoreBase({required this.fornecedorRepositorio});

  @observable
  bool isLoading = false;
  
  @observable
  Fornecedor fornecedor = Fornecedor();

  @observable
  Endereco endereco = Endereco();

  @action
  Future<void> cadastrarPessoa(Fornecedor pessoa, Endereco endereco) async{
    try{
      isLoading = true;
      //await enderecoRepositorio.cadastrarEndereco(endereco);
      await fornecedorRepositorio.cadastrarPessoa(pessoa,endereco);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}