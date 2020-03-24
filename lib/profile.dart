import 'package:flutter/material.dart';

import 'constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Constants.night),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
