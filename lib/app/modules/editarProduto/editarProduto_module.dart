import 'package:mercado_poo/app//modules/editarProduto/editarProduto_page.dart';
import 'package:mercado_poo/app//modules/editarProduto/editarProduto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditarProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditarProdutoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarProdutoPage()),
  ];
}
