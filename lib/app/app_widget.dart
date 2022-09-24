import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQuery.platformBrightnessOf(context);
    return MaterialApp.router(
      title: 'Flutter Slidy',
      //theme: teste.index == 1 ? ThemeData.light() : ThemeData.dark(),
      theme: ThemeData(primaryColor: Colors.deepOrange),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
