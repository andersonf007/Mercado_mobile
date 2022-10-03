
import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class PessoaRepositorio{
  IHttpService http;
  PessoaRepositorio(this.http);

  Future<String> cadastrarPessoa(Pessoa pessoa) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/cliente/cadastrar', data: pessoa.toJson());
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
          return Future.error("Dados incorretos: Verifique os dados do cliente. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  } 

  Future<List<Pessoa>> BuscarTodosClientes() async {
    try {
      String url = '/cliente/listarClientes';
      var response = await http.get(url: url);
      //print(response.data);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) {
          var pessoa = Pessoa.fromJson(e);
          return pessoa;
        }).toList();
      }
      return Future.error(response.data['error']);
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

    Future<String> editarPessoa(Pessoa pessoa) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/cliente/editar', data: pessoa.toJson());
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
          return Future.error("Dados incorretos: Verifique os dados do cliente. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  }

      Future<void> delete(Pessoa pessoa) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.delete(url: '/cliente/delete/${pessoa.id}');//, data: fornecedor.toJson());
    }catch(e){
      if (e is DioError) {
        print(e.message);
        print(Future.error(e).toString());
      }
      if (e.toString().contains('Http status error [404]')){
          return Future.error("Erro ao se conectar no servidor!");
      }
      if (e.toString().contains('Http status error [400]')){
          return Future.error("atualização ou exclusão em tabela viola restrição de chave estrangeira");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  }
}