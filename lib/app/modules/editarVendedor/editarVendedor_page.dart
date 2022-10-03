import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_store.dart';
import 'package:flutter/material.dart';

class EditarVendedorPage extends StatefulWidget {
  final String title;
  const EditarVendedorPage({Key? key, this.title = 'EditarVendedorPage'}) : super(key: key);
  @override
  EditarVendedorPageState createState() => EditarVendedorPageState();
}
class EditarVendedorPageState extends State<EditarVendedorPage> {
  final EditarVendedorStore store = Modular.get();

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