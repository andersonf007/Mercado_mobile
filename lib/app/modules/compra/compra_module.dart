import 'package:mercado_poo/app//modules/compra/compra_page.dart';
import 'package:mercado_poo/app//modules/compra/compra_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/compra/screen/finalizar_compra.dart';
import 'package:mercado_poo/app/modules/compra/screen/listagem_de_produtos.dart';
import 'package:mercado_poo/app/repositorios/Fornecedor_Repositorio.dart';
import 'package:mercado_poo/app/repositorios/compra_repositorio.dart';
import 'package:mercado_poo/app/repositorios/produto_repositorio.dart';

class CompraModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutoRepositorio(i.get())),
    Bind.lazySingleton((i) => CompraRepositorio(i.get())),
    Bind.lazySingleton((i) => FornecedorRepositorio(i.get())),
    Bind.singleton((i) => CompraStore(
          produtoRepositorio: i.get(),
          compraRepositorio: i.get(),
          fornecedorRepositorio: i.get()
        )),
  ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CompraPage()),
    ChildRoute('/ListagemProduto', child: (_, args) => ListagemProduto()),
    ChildRoute('/FinalizarCompra', child: (_, args) => FinalizarCompra()),
  ];
}
