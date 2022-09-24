import 'dart:math';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/modules/signup/signup_store.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key? key, this.title = 'SignupPage'}) : super(key: key);
  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final SignupStore store = Modular.get();
  TextEditingController nomeEmpresa = TextEditingController();
  TextEditingController url = TextEditingController();
  TextEditingController ipBanco = TextEditingController(text: 'localhost');
  TextEditingController usuarioBanco = TextEditingController(text: 'postgres');
  TextEditingController nomeBanco = TextEditingController(text: 'mercado');
  TextEditingController senhaBanco = TextEditingController(text: '123');
  TextEditingController portaBanco = TextEditingController(text: '5432');
    var rng = Random();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar empresa"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Configuração da empresa"),
                    TextFormField(
                      controller: nomeEmpresa,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'Nome da empresa',
                      ),
                    ),
                    TextFormField(
                      controller: url,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'IP do webService',
                      ),
                    ),
                    TextFormField(
                      controller: ipBanco,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'IP do banco',
                      ),
                    ),
                    TextFormField(
                      controller: usuarioBanco,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'Usuário do banco',
                      ),
                    ),
                    TextFormField(
                      controller: nomeBanco,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'Nome do banco de dados',
                      ),
                    ),
                    TextFormField(
                      controller: senhaBanco,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'Senha do banco de dados',
                      ),
                    ),
                    TextFormField(
                      controller: portaBanco,
                      decoration: const InputDecoration(
                        //hintText: 'What do people call you?',
                        labelText: 'Porta do banco de dados',
                      ),
                    ),
                    Observer(builder: (context) {
                      if(store.isloading){
                        return Center(child: CircularProgressIndicator());
                      }  
                      return ElevatedButton(
                        style:  ElevatedButton.styleFrom(
                              primary: Colors.deepOrange,
                        ),
                        onPressed: () {    
                          int random = rng.nextInt(1000000000);
                          print(random);                
                          store.sendConfig(
                            ConfigModels(
                              name: nomeEmpresa.text,
                              host: 'https://${url.text}',
                              ipDataBase: ipBanco.text,
                              userDataBase: usuarioBanco.text,
                              nameDataBase: nomeBanco.text,
                              passwordDataBase: senhaBanco.text,
                              dataBasePort: portaBanco.text,
                              id: random
                            ),nomeEmpresa.text).then((value) {
                            if (value == true) {
                              ScaffoldMessenger.of(context).showSnackBar
                                (SnackBar(content: Text('Empresa cadastrada')));
                              Modular.to.popAndPushNamed('/signin');
                            }
                          }).onError((error, stackTrace){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text(error.toString())));
                            }
                          );
                        },
                      child: const Text('Continuar'),
                    );  
                    })
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
