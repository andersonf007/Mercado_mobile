import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_page.dart';
import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditarVendedorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditarVendedorStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarVendedorPage()),
  ];
}
