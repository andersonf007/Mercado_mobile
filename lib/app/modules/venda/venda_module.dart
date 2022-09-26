import 'package:mercado_poo/app//modules/venda/venda_page.dart';
import 'package:mercado_poo/app//modules/venda/venda_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/venda/screen/listagem_de_produtos.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';
import 'package:mercado_poo/app/repositorios/venda_repositorio.dart';

class VendaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutoRepositorio(i.get())),
    Bind.lazySingleton((i) => VendaRepositorio(i.get())),
    Bind.lazySingleton((i) => VendaStore(
      produtoRepositorio: i.get(),
      vendaRepositorio: i.get()
    )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => VendaPage()),
    ChildRoute('/ListagemProduto', child: (_, args) => ListagemProduto()),
  ];
}
