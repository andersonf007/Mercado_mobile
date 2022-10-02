import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class ProdutoRepositorio{
  IHttpService http;
  ProdutoRepositorio(this.http);

  Future<String> cadastrarProduto(Produto produto) async{
    try{
      final IHttpService iHttpService = IHttpService();
      var response = await iHttpService.post(url: '/produto/cadastrar', data: produto.toJson());
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

  Future<List<Produto>> BuscarTodosProdutos() async {
    try {
      String url = '/produto/listarTodos';
      var response = await http.get(url: url);
      print(response.data);
      if (response.statusCode == 200) {
        return (response.data as List).map((e) {
          var produto = Produto.fromJson(e);
          return produto;
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

  Future<Produto> buscarProduto(int id) async {
    try {
      String url = '/produto/?id=${id}';
      var response = await http.get(url: url);
      if (response.statusCode == 200) {
        return Produto.fromJson(response.data);
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
          return Future.error("Dados incorretos: Verifique os dados do produto. Provavelmente ja existe um com esses dados");
      }
      if (e.toString().contains('Http status error [500]')){
          return Future.error("Erro interno no servidor. Estamos trabalhando para resolver.");
      }
      return Future.error(e); 
    }
  } 
}