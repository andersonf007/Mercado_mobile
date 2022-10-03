
import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class FornecedorRepositorio{
  IHttpService http;
  FornecedorRepositorio(this.http);

  Future<String> cadastrarFornecedor(Fornecedor fornecedor) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/fornecedor/cadastrar', data: fornecedor.toJson());
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
          return Future.error("Dados incorretos: Verifique os dados do fornecedor. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  } 

  Future<List<Fornecedor>> buscarFornecedores() async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.get(url: '/fornecedor/listarTodos');
      if (response.statusCode == 200) {
        return (response.data as List).map((e) {
          var fornecedor = Fornecedor.fromJson(e);
          return fornecedor;
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
          return Future.error("Erro ao cadastrar o fornecedor");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  }

  Future<String> editarFornecedor(Fornecedor fornecedor) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/fornecedor/editar', data: fornecedor.toJson());
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
          return Future.error("Dados incorretos: Verifique os dados do fornecedor. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  }

    Future<void> delete(Fornecedor fornecedor) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.delete(url: '/fornecedor/delete/${fornecedor.id}');//, data: fornecedor.toJson());
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