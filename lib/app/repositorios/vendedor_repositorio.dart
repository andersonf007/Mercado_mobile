import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class VendedorRepositorio{
  IHttpService http;
  VendedorRepositorio(this.http);

  Future<String> cadastrarVendedor(Vendedor vendedor) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/vendedor/cadastrar', data: vendedor.toJson());
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

  Future<List<Vendedor>> BuscarTodosVendedores() async {
    try {
      String url = '/vendedor/listarVendedores';
      var response = await http.get(url: url);
      //print(response.data);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) {
          var vendedor = Vendedor.fromJson(e);
          return vendedor;
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
          return Future.error("Dados incorretos: Verifique os dados do vendedor. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  }

  Future<String> editarVendedor(Vendedor vendedor) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/vendedor/editar', data: vendedor.toJson());
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