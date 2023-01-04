import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/drawer/drawerScreen.dart';
import 'screens/home/home_page.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          DrawerScreen(),
          HomePage(),
        ],
      ),
    );
  }
}