import 'dart:convert';

import 'package:mercado_poo/app/models/config_model/config_models.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'setting_store.g.dart';

class SettingStore = _SettingStoreBase with _$SettingStore;

abstract class _SettingStoreBase with Store {
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
        company
            .add(ConfigModels.fromJson(jsonDecode(prefs.getString(companys)!)));
      }
    }
  }
}
