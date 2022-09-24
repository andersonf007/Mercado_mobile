
import 'package:mercado_poo/app/abstractClasses/AbstractRepositoriesServices.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class GetConfig extends AbstractRepositoriesServices<ConfigModels, ConfigModels> {
  
  IHttpService http;
  GetConfig({required this.http});
  @override
  Future<ConfigModels> call(params) async {
    try {
      String url = '';
      var response = await http.get(url: url);
      return ConfigModels.fromJson(response.data);
    } catch (e) {
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