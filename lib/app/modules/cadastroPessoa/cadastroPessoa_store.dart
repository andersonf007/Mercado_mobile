import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/repositorios/endereco_repositorio.dart';
import 'package:mercado_poo/app/repositorios/pessoa_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'cadastroPessoa_store.g.dart';

class CadastroPessoaStore = _CadastroPessoaStoreBase with _$CadastroPessoaStore;
abstract class _CadastroPessoaStoreBase with Store {

  PessoaRepositorio pessoaRepositorio;
  EnderecoRepositorio enderecoRepositorio;
  _CadastroPessoaStoreBase({required this.pessoaRepositorio, required this.enderecoRepositorio});

  @observable
  bool isLoading = false;
  
  @observable
  Pessoa pessoa = Pessoa();

  @observable
  Endereco endereco = Endereco();

  @action
  Future<void> cadastrarPessoa(Pessoa pessoa, Endereco endereco) async{
    try{
      isLoading = true;
      //await enderecoRepositorio.cadastrarEndereco(endereco);
      await pessoaRepositorio.cadastrarPessoa(pessoa,endereco);
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}