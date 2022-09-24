import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BackButtomCustom extends StatelessWidget {
  final String route;
  const BackButtomCustom({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Modular.to.pushNamedAndRemoveUntil(route, (p0) => false);
      },
    );
  }
}
