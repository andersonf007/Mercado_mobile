import 'package:mercado_poo/app//modules/editarFornecedor/editarFornecedor_page.dart';
import 'package:mercado_poo/app//modules/editarFornecedor/editarFornecedor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/editarFornecedor/screen/edicaoFornecedor.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';

class EditarFornecedorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FornecedorRepositorio(i.get())),
    Bind.lazySingleton((i) => EditarFornecedorStore(
      fornecedorRepositorio: i.get(),
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarFornecedorPage()),
    ChildRoute('/edicaoFornecedor', child:(_, args) => EdicaoFornecedor(fornecedor: args.data)),
  ];
}
