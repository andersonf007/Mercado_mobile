import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/editarCliente/editarCliente_store.dart';
import 'package:flutter/material.dart';

class EditarClientePage extends StatefulWidget {
  final String title;
  const EditarClientePage({Key? key, this.title = 'EditarClientePage'}) : super(key: key);
  @override
  EditarClientePageState createState() => EditarClientePageState();
}
class EditarClientePageState extends State<EditarClientePage> {
  final EditarClienteStore store = Modular.get();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    store.buscarClientes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Clientes'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Observer(
                builder: (context) {
                  if (store.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if(store.listCliente.isEmpty){
                    return Text("Não existe cliente");
                  }
                  return Expanded(
                    child: ListView.builder(                      
                      itemCount: store.listCliente.length,
                      itemBuilder: (context, index) {
                        //var fornecedor = store.listFornecedor[index];
                        return GestureDetector(
                          onTap: () async {
                            bool deuErro = false;
                            Modular.to.pushNamed('/editarCliente/edicaoCliente',arguments: store.listCliente[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(store.listCliente[index].nome ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
        ],
      ),
    );
  }
}