import 'package:flutter_mobx/flutter_mobx.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    store.buscarProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Produto'),
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
                  if(store.listProduto.isEmpty){
                    return Text("Não existe Produtos");
                  }
                  return Expanded(
                    child: ListView.builder(                      
                      itemCount: store.listProduto.length,
                      itemBuilder: (context, index) {
                        //var fornecedor = store.listFornecedor[index];
                        return GestureDetector(
                          onTap: () async {
                            bool deuErro = false;
                            Modular.to.pushNamed('/editarProduto/edicaoProduto',arguments: store.listProduto[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(store.listProduto[index].nome ?? '',
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