import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/compra/compra_store.dart';
import 'package:intl/intl.dart';

class FinalizarCompra extends StatefulWidget {
  const FinalizarCompra({Key? key}) : super(key: key);

  @override
  State<FinalizarCompra> createState() => _FinalizarCompraState();
}

class _FinalizarCompraState extends State<FinalizarCompra> {
  final CompraStore store = Modular.get();
  NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
  @override
  void initState() {
    super.initState();
    store.buscarFornecedores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Finalização',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Color.fromARGB(141, 250, 249, 249),
      ),
      body: Observer(builder: (context) {        
        if (store.isLoading) {
          return CircularProgressIndicator();
        }
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Selecione um fornecedor',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
                  child: DropdownButton<int>(
                    alignment: Alignment.topRight,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    value: store.idFornecedor,
                    underline: Container(
                      color: Colors.red,
                    ),
                    elevation: 50,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 71, 52, 102)),
                    onChanged: (newValue) {
                      store.idFornecedor = newValue!;
                    },
                    items: store.listFornecedores.map<DropdownMenuItem<int>>((value) {
                      return DropdownMenuItem<int>(
                        value: value.id,
                        alignment: Alignment.center,
                        child: Container(
                          child: Text(value.nomeFornecedor ?? ''),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              SizedBox(height: 50,), 
              Text("Total R\$ ${store.valorTotalCompra}",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 50,), 
              Observer(builder: (context){
                bool deuErro = false;
                if(store.isLoadingInserirCompra){
                  return CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () async{
                    await store.finalizarCompra()
                    .onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Erro ao finalizar a compra\n ${error.toString()}')));
                        //content: Text('Erro ao finalizar a venda')));
                      deuErro = true;
                      store.isLoadingInserirCompra = false;
                    });
                      if (!deuErro) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('compra finalizada')));
                        store.listFornecedores.clear();
                        store.valorTotalCompra = 0.00;
                        store.listProdutoCompra.clear();
                        Modular.to.pop();
                      }
                      

                  }, 
                  child: Text('Finalizar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 18,
                        color: Colors.black
                      ),
                    ),
                  style:  ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 250, 249, 249),
                  ),
                );
              })
            ],
          ),
        );
      }),
    );
  }
}
