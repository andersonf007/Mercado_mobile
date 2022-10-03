import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/editarProduto/editarProduto_store.dart';
import 'package:flutter/material.dart';

class EditarProdutoPage extends StatefulWidget {
  final String title;
  const EditarProdutoPage({Key? key, this.title = 'EditarProdutoPage'}) : super(key: key);
  @override
  EditarProdutoPageState createState() => EditarProdutoPageState();
}
class EditarProdutoPageState extends State<EditarProdutoPage> {
  final EditarProdutoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}