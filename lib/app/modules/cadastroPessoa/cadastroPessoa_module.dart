import 'package:mercado_poo/app//modules/cadastroPessoa/cadastroPessoa_page.dart';
import 'package:mercado_poo/app//modules/cadastroPessoa/cadastroPessoa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/repositorios/endereco_repositorio.dart';
import 'package:mercado_poo/app/repositorios/pessoa_repositorio.dart';

class CadastroPessoaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EnderecoRepositorio(i.get())),
    Bind.lazySingleton((i) => PessoaRepositorio(i.get())),
    Bind.lazySingleton((i) => CadastroPessoaStore(
      enderecoRepositorio: i.get(),
      pessoaRepositorio:  i.get()
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CadastroPessoaPage()),
  ];
}
