import 'package:mercado_poo/app//modules/editarCliente/editarCliente_page.dart';
import 'package:mercado_poo/app//modules/editarCliente/editarCliente_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/editarCliente/screen/edicaoCliente.dart';
import 'package:mercado_poo/app/repositorios/pessoa_repositorio.dart';

class EditarClienteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PessoaRepositorio(i.get())),
    Bind.lazySingleton((i) => EditarClienteStore(
      pessoaRepositorio: i.get()
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => EditarClientePage()),
    ChildRoute('/edicaoCliente', child: (_, args) => EdicaoCliente(pessoa: args.data)),
  ];
}
