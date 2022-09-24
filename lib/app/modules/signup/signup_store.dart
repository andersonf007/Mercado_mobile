import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mercado_poo/app/repositorios/create_config.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'signup_store.g.dart';

class SignupStore = _SignupStoreBase with _$SignupStore;

abstract class _SignupStoreBase with Store {
  late SharedPreferences prefs;
  @observable
  List<ConfigModels> company = [];
  @observable
  bool isloading = false;
  @observable
  bool isEquals = false;

  @action
  Future<bool> sendConfig(ConfigModels params, String name) async {
    //print(params.toJson());
    try {
      isEquals = false;
      isloading = true;
      final CreateConfig signupStore = CreateConfig();      
      prefs = await SharedPreferences.getInstance();
      prefs.setString('currentUrl', params.host!);
      var response = await signupStore.call(params);
      
      if (response.isNotEmpty) {
        var keys = prefs.getKeys();
        company.clear();
        for (var companys in keys) {
          if (companys.startsWith('key')) {
            company.add(ConfigModels.fromJson(jsonDecode(prefs.getString(companys)!)));
          }
        }
        for(var companys in company){
          if(params.id == companys.id){
            isEquals = true;
            isloading = false;
            return false;
          }
        }
        prefs.setString('key-${params.id}', jsonEncode(params.toJson()));
        // prefs.setString('nome', name);
        // prefs.setString('ipBanco', params.ipDataBase!);
        // prefs.setString('usuario', params.userDataBase!);
        // prefs.setString('banco', params.nameDataBase!);
        // prefs.setString('senha', params.passwordDataBase!);
        // prefs.setString('porta', params.dataBasePort!);
        isloading = false;
        return true;
      }
      isloading = false;
      return false;
    } catch (e) {
      if (e is DioError) {
        print(e.message);
        isloading = false;
      }
      print(e);
      isloading = false;
      return Future.error(e);
    }
  }
}
