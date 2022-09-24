import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class VendedorRepositorio{
  IHttpService http;
  VendedorRepositorio(this.http);

  Future<String> cadastrarVendedor(Vendedor vendedor, Endereco endereco) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/vendedor/cadastrar', data: {
        'nome': vendedor.nome,
        'cpf': vendedor.cpf,
        'sexo': vendedor.sexo,
        'email': vendedor.email,
        'dataNascimento': vendedor.dataNascimento,
        'cargo': vendedor.cargo,
        'salario': vendedor.salario,
        'dataContrato': vendedor.dataContrato,
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