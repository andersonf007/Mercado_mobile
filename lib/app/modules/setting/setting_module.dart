
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/setting/setting_page.dart';
import 'package:mercado_poo/app/modules/setting/setting_store.dart';

class SettingModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SettingStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SettingPage()),
  ];
}
