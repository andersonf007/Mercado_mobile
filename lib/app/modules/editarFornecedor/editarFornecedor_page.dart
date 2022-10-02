import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mercado_poo/app//modules/editarFornecedor/editarFornecedor_store.dart';
import 'package:flutter/material.dart';

class EditarFornecedorPage extends StatefulWidget {
  final String title;
  const EditarFornecedorPage({Key? key, this.title = 'EditarFornecedorPage'}) : super(key: key);
  @override
  EditarFornecedorPageState createState() => EditarFornecedorPageState();
}
class EditarFornecedorPageState extends State<EditarFornecedorPage> {
  final EditarFornecedorStore store = Modular.get();
  TextEditingController textNome = TextEditingController();
  TextEditingController textCnpj = TextEditingController();
  TextEditingController texttelefone = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  TextEditingController textLogradouro = TextEditingController();
  TextEditingController textCep = TextEditingController();
  TextEditingController textCidade = TextEditingController();
  TextEditingController textUf = TextEditingController();
  TextEditingController textBairro = TextEditingController();
  TextEditingController textNumero = TextEditingController();
  var maskFormatterCnpj = new MaskTextInputFormatter(mask: '##.###.###/####-##', filter: { "#": RegExp(r'[0-9]') });
  var maskFormatterTelefone = new MaskTextInputFormatter(mask: '(##)#.####-####', filter: { "#": RegExp(r'[0-9]') });
  var maskFormatterCep = new MaskTextInputFormatter(mask: '##.###-###', filter: { "#": RegExp(r'[0-9]') });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    store.buscarFornecedores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Fornecedor'),
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
                  if(store.listFornecedor.isEmpty){
                    return Text("Não existe Fornecedor");
                  }
                  return Expanded(
                    child: ListView.builder(                      
                      itemCount: store.listFornecedor.length,
                      itemBuilder: (context, index) {
                        //var fornecedor = store.listFornecedor[index];
                        return GestureDetector(
                          onTap: () async {
                            bool deuErro = false;
                            Modular.to.pushNamed('/editarFornecedor/edicaoFornecedor',arguments: store.listFornecedor[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(store.listFornecedor[index].nomeFornecedor ?? '',
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