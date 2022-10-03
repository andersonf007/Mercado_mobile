import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/editarCliente/editarCliente_store.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';

class EdicaoProduto extends StatefulWidget {
  final Produto produto;
  EdicaoProduto({required this.produto});

  @override
  State<EdicaoProduto> createState() => _EdicaoProdutoState();
}

class _EdicaoProdutoState extends State<EdicaoProduto> {
  final EditarClienteStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    
  }
}