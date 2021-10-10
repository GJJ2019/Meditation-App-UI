import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../core/constants.dart';
import 'pages/home_page.dart';
import 'pages/night_page.dart';
import 'pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePage(), const NightPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Constants.navBarColor,
          selectedItemColor: Constants.accentColor,
          unselectedIconTheme: const IconThemeData(color: Constants.white),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(AntDesign.home),
              title: _showDotIndicator(_selectedIndex == 0),
            ),
            BottomNavigationBarItem(
              icon: const Icon(AntDesign.windowso),
              title: _showDotIndicator(_selectedIndex == 1),
            ),
            BottomNavigationBarItem(
              icon: const Icon(AntDesign.user),
              title: _showDotIndicator(_selectedIndex == 2),
            ),
          ],
          currentIndex: _selectedIndex,
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
        ? const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.brightness_1,
              size: 7,
              color: Constants.accentColor,
            ),
          )
        : const SizedBox();
  }
}
