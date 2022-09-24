import 'package:mercado_poo/app//modules/cadastroVendedor/cadastroVendedor_page.dart';
import 'package:mercado_poo/app//modules/cadastroVendedor/cadastroVendedor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/repositorios/vendedor_repositorio.dart';

class CadastroVendedorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => VendedorRepositorio(i.get())),
    Bind.lazySingleton((i) => CadastroVendedorStore(
      vendedorRepositorio: i.get()
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroVendedorPage()),
  ];
}
