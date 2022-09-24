import 'dart:convert';

import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signin_store.g.dart';

class SigninStore = _SigninStoreBase with _$SigninStore;

abstract class _SigninStoreBase with Store {
  //VerifyConfig verify = VerifyConfig();
  @observable
  List<ConfigModels> company = [];
  @observable
  bool isLoading = false;

  @action
  Future<void> getAlllogins() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    /*var json = await prefs.getString(key);
    var config = ConfigModels.fromJson(jsonDecode(json!));
    config.copywith();*/
    var keys = prefs.getKeys();
    company.clear();
    for (var companys in keys) {
      if (companys.startsWith('key')) {
        company.add(ConfigModels.fromJson(jsonDecode(prefs.getString(companys)!)));
      }
    }
  }

  Future<void> login() async{
     var prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', 'd41d8cd98f00b204e9800998ecf8427e');
      await prefs.setInt('idUser', 1);
  }

}
