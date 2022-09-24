
import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class PessoaRepositorio{
  IHttpService http;
  PessoaRepositorio(this.http);

  Future<String> cadastrarPessoa(Pessoa pessoa, Endereco endereco) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/cliente/cadastrar', data: {
        'nome': pessoa.nome,
        'cpf': pessoa.cpf,
        'sexo': pessoa.sexo,
        'dataNascimento': pessoa.dataNascimento,
        'email': pessoa.email,
        'logradouro': endereco.logradouro,
        'cep': endereco.cep,
        'cidade': endereco.cidade,
        'uf': endereco.uf,
        'bairro': endereco.bairro,
        'numero': endereco.numero,
      });
      return response.data['ok'];
    }catch(e){
      if (e is DioError) {
        print(e.message);
        print(Future.error(e).toString());
      }
      if (e.toString().contains('Http status error [404]')){
          return Future.error("Erro ao se conectar no servidor!");
      }
      if (e.toString().contains('Http status error [400]')){
          return Future.error("Dados para conexão incorretos");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  } 
}