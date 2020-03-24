import 'package:flutter/material.dart';
import 'package:meditation_design/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
        accentColor: Colors.amber[800],
        primaryColor: Colors.amber[800],
      ),
      home: MainPage(),
    );
  }
}
