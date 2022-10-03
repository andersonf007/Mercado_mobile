import 'package:mercado_poo/app//modules/editarProduto/editarProduto_page.dart';
import 'package:mercado_poo/app//modules/editarProduto/editarProduto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/editarProduto/screen/edicaoProduto.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';

class EditarProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutoRepositorio(i.get())),
    Bind.lazySingleton((i) => EditarProdutoStore(
      produtoRepositorio: i.get(),
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarProdutoPage()),
    ChildRoute('/edicaoProduto', child: (_, args) => EdicaoProduto(produto: args.data,)),
  ];
}
