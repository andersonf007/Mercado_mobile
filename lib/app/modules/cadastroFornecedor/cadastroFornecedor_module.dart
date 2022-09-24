import 'package:mercado_poo/app//modules/cadastroFornecedor/cadastroFornecedor_page.dart';
import 'package:mercado_poo/app//modules/cadastroFornecedor/cadastroFornecedor_page.dart';
import 'package:mercado_poo/app//modules/cadastroFornecedor/cadastroFornecedor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';

class CadastroFornecedorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FornecedorRepositorio(i.get())),
    Bind.lazySingleton(
        (i) => CadastroFornecedorStore(fornecedorRepositorio: i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroFornecedorPage()),
    ChildRoute('/', child: (_, args) => CadastroFornecedorPage()),
  ];
}
