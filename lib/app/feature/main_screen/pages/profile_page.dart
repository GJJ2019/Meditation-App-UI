import 'package:flutter/material.dart';
import 'package:meditation_design/app/core/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Constants.night),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
