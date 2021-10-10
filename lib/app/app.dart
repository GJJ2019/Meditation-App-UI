import 'package:flutter/material.dart';

import 'feature/main_screen/main_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: const MainScreen(),
    );
  }
}
