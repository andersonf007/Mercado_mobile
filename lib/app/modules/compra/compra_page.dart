import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/compra/compra_store.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompraPage extends StatefulWidget {
  final String title;
  const CompraPage({Key? key, this.title = 'CompraPage'}) : super(key: key);
  @override
  CompraPageState createState() => CompraPageState();
}
class CompraPageState extends State<CompraPage> {
  final CompraStore store = Modular.get();
  NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compra'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Produto',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
              ),
              Text('Quantidade',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
              ),
              Text('Total',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
              ),
            ],
          ),
          Observer(
            builder: (context){
              if(store.listProdutoCompra.isEmpty)
                return Center(
                  child: Text('Não existe produtos nessa compra'),
                );
              return Expanded(
                child: ListView.builder(
                  itemCount: store.listProdutoCompra.length,
                  itemBuilder: (context, index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(store.listProdutoCompra[index].produto?.nome ?? "",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(store.listProdutoCompra[index].qtdProdutos!.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(formatter.format(store.listProdutoCompra[index].valorTotal!),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),                        
                      ],
                    );
                  },
                ),
              );  
            }
          ),
          Observer(builder: (context){
            return Text("Total R\$ ${store.valorTotalCompra}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed('/compra/ListagemProduto');
                  }, 
                  child: Text('ADD. produto',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  style:  ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 250, 249, 249),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    if(store.listProdutoCompra.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("insira produto na compra")));
                    }else{
                      Modular.to.pushNamed('/compra/FinalizarCompra');
                    }
                  }, 
                  child: Text('ADD. venda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  style:  ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 250, 249, 249),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}