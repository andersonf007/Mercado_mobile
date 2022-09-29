import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/venda/venda_store.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VendaPage extends StatefulWidget {
  final String title;
  const VendaPage({Key? key, this.title = 'VendaPage'}) : super(key: key);
  @override
  VendaPageState createState() => VendaPageState();
}
class VendaPageState extends State<VendaPage> {
  final VendaStore store = Modular.get();
  NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              if(store.listProdutoVenda.isEmpty)
                return Center(
                  child: Text('Não existe produtos nessa venda'),
                );
              return Expanded(
                child: ListView.builder(
                  itemCount: store.listProdutoVenda.length,
                  itemBuilder: (context, index){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(store.listProdutoVenda[index].produto?.nome ?? "",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(store.listProdutoVenda[index].qtdProdutos!.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(formatter.format(store.listProdutoVenda[index].valorTotal!),
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
            return Text("Total R\$ ${store.valorTotal}",
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
                    Modular.to.pushNamed('/venda/ListagemProduto');
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
                    if(store.listProdutoVenda.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("insira produto na venda")));
                    }else{
                      Modular.to.pushNamed('/venda/FinalizarVenda');
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