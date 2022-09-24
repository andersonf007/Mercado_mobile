import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/modules/signin/signin_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);
  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get();
  TextEditingController textSenha = TextEditingController();
  TextEditingController textUsuario = TextEditingController();
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await store.getAlllogins();
      setState(() {});
      prefs = await SharedPreferences.getInstance();
    });
  }

  ConfigModels? configModels;
  @override
  Widget build(BuildContext context) {
    print(store.company.length);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "app venda",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Modular.to.pushNamed('/settings');
            },
            child: Icon(
              Icons.settings,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Observer(builder: (context) {
                return Form(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        if (store.company.isNotEmpty)
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                            /*border: Border(
                                bottom: BorderSide(color: Colors.black)
                              ),*/
                              color: Color.fromARGB(48, 255, 255, 255)
                              ),
                            child: DropdownButton<ConfigModels>(
                              value: configModels,
                              hint: Text('Selecione uma empresa'),
                              alignment: Alignment.center,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 50,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              onChanged: (newValue) {
                                prefs.setString('currentUrl', newValue!.host!);
                                setState(() {
                                  configModels = newValue;
                                });
                              },
                              items: store.company.map<DropdownMenuItem<ConfigModels>>((ConfigModels value) {
                                return DropdownMenuItem<ConfigModels>(
                                  alignment: Alignment.center,
                                  value: value,
                                  child: Text(value.name ?? '',style: TextStyle(fontSize: 16),),

                                );
                              }).toList(),
                            ),
                          ),
                        ElevatedButton(
                          onPressed: (){
                            if(configModels != null){
                              store.login();
                              Modular.to.pushNamed('/home');
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text('Nenhuma empresa selecionada')));
                            }
                          },
                          child: Text('aqui')
                        )
                  ]),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
