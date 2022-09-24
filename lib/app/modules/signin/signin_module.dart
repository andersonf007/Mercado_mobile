
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/signin/signin_page.dart';
import 'package:mercado_poo/app/modules/signin/signin_store.dart';

class SigninModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SigninStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SigninPage()),
  ];
}
