import 'package:flutter_mobx/flutter_mobx.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    store.buscarVendedores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Vendedor'),
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
                  if(store.listVendedor.isEmpty){
                    return Text("Não existe Vendedores");
                  }
                  return Expanded(
                    child: ListView.builder(                      
                      itemCount: store.listVendedor.length,
                      itemBuilder: (context, index) {
                        //var fornecedor = store.listFornecedor[index];
                        return GestureDetector(
                          onTap: () async {
                            bool deuErro = false;
                            Modular.to.pushNamed('/editarVendedor/edicaoVendedor',arguments: store.listVendedor[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(store.listVendedor[index].nome ?? '',
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