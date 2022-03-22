import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferencias.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode:  ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Genero:  ${Preferences.gender}'),
          const Divider(),
          Text('Nombre: ${Preferences.name}'),
        ],
      ),
    );
  }
}
