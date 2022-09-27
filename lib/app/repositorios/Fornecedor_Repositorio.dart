
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
      /*  'nome': fornecedor.nome,
        'cnpj': fornecedor.cnpj,
        'telefone': fornecedor.telefone,
        'email': fornecedor.email,
        'logradouro': endereco.logradouro,
        'cep': endereco.cep,
        'cidade': endereco.cidade,
        'uf': endereco.uf,
        'bairro': endereco.bairro,
        'numero': endereco.numero,
      });*/
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