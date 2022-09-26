import 'package:mercado_poo/app//modules/cadastroProduto/cadastroProduto_page.dart';
import 'package:mercado_poo/app//modules/cadastroProduto/cadastroProduto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';

class CadastroProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutoRepositorio(i.get())),
    Bind.lazySingleton((i) => CadastroProdutoStore(
      produtoRepositorio: i.get()
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroProdutoPage()),
  ];
}
