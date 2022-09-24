import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/commom/BackButtom.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/modules/setting/setting_store.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final String title;
  const SettingPage({Key? key, this.title = 'SettingPage'}) : super(key: key);
  @override
  SettingPageState createState() => SettingPageState();
}
class SettingPageState extends State<SettingPage> {
  final SettingStore store = Modular.get();
  String dropdownValue = "One";
  late SharedPreferences prefs;
  ConfigModels? configModels;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await store.getAlllogins();
      setState(() {});
      prefs = await SharedPreferences.getInstance();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuração"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: BackButtomCustom(
          route: '/signin',
        ),
        automaticallyImplyLeading: false,
      ),
      
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Menu de Configurações !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Modular.to.pushNamed("/signup");
                  },
                  child: Container(
                    color: Color.fromARGB(255, 250, 249, 249), 
                    height: 45,
                    width: 280,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                      Icon(
                        Icons.add
                      ),
                      SizedBox(width: 20,),
                      Text('Adicionar nova configuração',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ],
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}