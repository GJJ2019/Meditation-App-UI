import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../core/constants.dart';
import 'pages/home_page.dart';
import 'pages/night_page.dart';
import 'pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(AntDesign.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.windowso),
              label: 'Window',
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.user),
              label: 'Profile',
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

  // Widget _showDotIndicator(bool show) {
  //   return show
  //       ? const Padding(
  //           padding: EdgeInsets.only(top: 4),
  //           child: Icon(
  //             Icons.brightness_1,
  //             size: 7,
  //             color: Constants.accentColor,
  //           ),
  //         )
  //       : const SizedBox();
  // }
}
