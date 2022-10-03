import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app//modules/venda/venda_store.dart';
import 'package:intl/intl.dart';

class FinalizarVenda extends StatefulWidget {
  const FinalizarVenda({Key? key}) : super(key: key);

  @override
  State<FinalizarVenda> createState() => _FinalizarVendaState();
}

class _FinalizarVendaState extends State<FinalizarVenda> {
  final VendaStore store = Modular.get();
  NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
  List<String> list = <String>['Debito', 'Credito', 'PIX'];
  @override
  void initState() {
    super.initState();
    store.getdata();
    store.dropdownValue = list.first;
    store.isLoadingInserirVenda = false;
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
        /*actions: [
          InkWell(
            child: Image.asset(
              'assets/setaEsquerda.png',
              height: 50,
              width: 50,
            ),
          ),
        ],*/
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
              Text('Selecione um cliente',
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
                    value: store.idCliente,
                    underline: Container(
                      color: Colors.red,
                    ),
                    elevation: 50,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 71, 52, 102)),
                    onChanged: (newValue) {
                      store.idCliente = newValue!;
                    },
                    items: store.listCliente.map<DropdownMenuItem<int>>((value) {
                      return DropdownMenuItem<int>(
                        value: value.id,
                        alignment: Alignment.center,
                        child: Container(
                          child: Text(value.nome ?? ''),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              SizedBox(height: 10,),  
              Text('Selecione um vendedor',
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
                    hint: Text('Selecione um vendedor'),
                    alignment: Alignment.topRight,
                    isExpanded: true,
                    value: store.idVendedor,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    underline: Container(
                      color: Colors.red,
                    ),
                    elevation: 50,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 71, 52, 102)),
                    onChanged: (newValue) {
                      store.idVendedor = newValue!;
                    },
                    items:store.listVendedor.map<DropdownMenuItem<int>>((value) {
                      return DropdownMenuItem<int>(
                        value: value.id,
                        alignment: Alignment.center,
                        child: Container(
                          child: Text(value.nome ?? ''),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              SizedBox(height: 15,), 
              Text('Selecione a forma de pagamento',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
              Container(                  
                  decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
                  child: DropdownButton<String>(
                    alignment: Alignment.topRight,
                    isExpanded: true,
                    value: store.dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    underline: Container(
                      color: Colors.red,
                    ),
                    elevation: 50,
                    style: const TextStyle(
                    color: Color.fromARGB(255, 71, 52, 102)),
                    onChanged: (String? value) {
                      //setState(() {
                        store.dropdownValue = value!;
                      //});
                    },
                    items:list.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        alignment: Alignment.center,
                        child: Container(
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              SizedBox(height: 50,), 
              Text("Total R\$ ${store.valorTotal}",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 50,), 
              Observer(builder: (context){
                bool deuErro = false;
                if(store.isLoadingInserirVenda){
                  return CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () async{
                    await store.finalizarVenda()
                    .onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Erro ao finalizar a venda\n ${error.toString()}')));
                        //content: Text('Erro ao finalizar a venda')));
                      deuErro = true;
                      store.isLoadingInserirVenda = false;
                    });
                      if (!deuErro) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Venda finalizada')));
                        store.listProdutoVenda.clear();
                        store.valorTotal = 0.00;
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
