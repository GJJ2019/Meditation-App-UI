import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:meditation_design/app/core/constants.dart';

class NightPage extends StatefulWidget {
  const NightPage({Key? key}) : super(key: key);

  @override
  _NightPageState createState() => _NightPageState();
}

class _NightPageState extends State<NightPage> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 50.0),
          Text(
            'Good night',
            style: Constants.boldLarge.copyWith(color: Constants.white, fontSize: 24),
          ),
          const SizedBox(height: 10.0),
          Text(
            '28 June, 2019',
            style: Constants.normalMedium.copyWith(color: Constants.white),
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.topLeft,
            child: CupertinoSwitch(value: true, onChanged: (_) {}),
          ),
          const Spacer(),
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
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(7.0)),
                child: const Icon(AntDesign.adduser, color: Constants.white),
              )
            ],
          ),
          const SizedBox(height: 10),
          _createTimelineCard(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  ListTile _createTimelineCard() {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(right: 30.0),
        decoration: const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        child: const Icon(AntDesign.clockcircleo, color: Constants.white),
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
