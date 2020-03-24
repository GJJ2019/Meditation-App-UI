import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'constants.dart';

class Night extends StatefulWidget {
  @override
  _NightState createState() => _NightState();
}

class _NightState extends State<Night> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 50.0),
          Text(
            'Good night',
            style: Constants.boldLarge
                .copyWith(color: Constants.white, fontSize: 24),
          ),
          SizedBox(height: 10.0),
          Text(
            '28 June, 2019',
            style: Constants.normalMedium.copyWith(color: Constants.white),
          ),
          SizedBox(height: 20.0),
          Align(
            alignment: Alignment.topLeft,
            child: CupertinoSwitch(value: true, onChanged: (_) {}),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Programmation',
                style: Constants.normalMedium.copyWith(color: Constants.white),
              ),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 30.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7.0)),
                child: Icon(AntDesign.adduser, color: Constants.white),
              )
            ],
          ),
          SizedBox(height: 10),
          _createTimilineCard(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  ListTile _createTimilineCard() {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(right: 30.0),
        decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        child: Icon(AntDesign.clockcircleo, color: Constants.white),
      ),
      title: Text(
        'Meditation Zen',
        style: Constants.normalMedium.copyWith(color: Constants.white),
      ),
      subtitle: Text(
        'In Progress',
        style: Constants.normalSmall.copyWith(color: Constants.white),
      ),
      trailing: Text(
        '10:00 p.m.',
        style: Constants.normalSmall.copyWith(color: Constants.white),
      ),
    );
  }
}
