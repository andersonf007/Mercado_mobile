import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/venda/venda_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class VendaRepositorio{
  IHttpService http;
  VendaRepositorio(this.http);

  Future<String> inserirVenda(Venda venda) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/venda/inserir', data: venda.toJson());
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
          return Future.error("Dados incorretos");
      }
      if (e.toString().contains('Http status error [500]')){
          print(e.toString());
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
          
      }
      return Future.error(e); 
    }
  } 
}  