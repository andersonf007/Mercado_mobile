import 'package:dio/dio.dart';
import 'package:mercado_poo/app/abstractClasses/AbstractRepositoriesServices.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class CreateConfig extends AbstractRepositoriesServices<String, ConfigModels> {
  @override
  Future<String> call(params) async {
    try {
      final IHttpService iHttpService = IHttpService();
      String url = '/config';
      var response = await iHttpService.post(url: url, data: params.toJson());
      //print(response.data['ok']);
      return response.data['ok'];
    } catch (e) {
      //print('CreateConfig $e');
      if (e is DioError) {
        print(e.message);
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
