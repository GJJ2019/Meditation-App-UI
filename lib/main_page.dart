import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:meditation_design/constants.dart';
import 'package:meditation_design/night.dart';
import 'package:meditation_design/profile.dart';

import 'home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Home(), Night(), Profile()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Constants.navBarColor,
          unselectedIconTheme: IconThemeData(color: Constants.white),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(AntDesign.home),
              title: _showDotIndicator(_selectedIndex == 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.windowso),
              title: _showDotIndicator(_selectedIndex == 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.user),
              title: _showDotIndicator(_selectedIndex == 2),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).accentColor,
          onTap: (i) {
            setState(() {
              _selectedIndex = i;
            });
          },
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }

  Widget _showDotIndicator(bool show) {
    return show
        ? Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Icon(Icons.brightness_1, size: 7, color: Colors.amber[800]),
          )
        : SizedBox();
  }
}
