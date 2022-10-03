import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_page.dart';
import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/editarVendedor/screen/edicaoVendedor.dart';
import 'package:mercado_poo/app/repositorios/vendedor_repositorio.dart';

class EditarVendedorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => VendedorRepositorio(i.get())),
    Bind.lazySingleton((i) => EditarVendedorStore(
      vendedorRepositorio: i.get(),
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarVendedorPage()),
    ChildRoute('/edicaoVendedor', child: (_, args) => EdicaoVendedor(vendedor: args.data,)),
  ];
}
