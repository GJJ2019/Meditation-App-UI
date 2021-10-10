import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:meditation_design/app/core/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(Constants.morning), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 50),
          Text(
            'Welcome, GJJ2019',
            style: Constants.boldLarge.copyWith(color: Constants.white, fontSize: 24),
          ),
          const SizedBox(height: 10.0),
          Text(
            '28 June, 2019',
            style: Constants.normalMedium.copyWith(color: Constants.white),
          ),
          const SizedBox(height: 30.0),
          _activityCard(),
          const Spacer(),
          Text(
            'What Do You Need Today ?',
            style: Constants.boldMedium.copyWith(color: Constants.white),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, int index) => _scheduleCard(),
              itemCount: 4,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Container _activityCard() {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.only(right: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(color: Constants.white, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(
                AntDesign.notification,
                color: Constants.accentColor,
              ),
              Text(
                ' Activity today',
                style: Constants.boldSmall.copyWith(
                  color: Constants.accentColor,
                ),
              ),
              Expanded(
                child: Text(
                  '8:00 p.m.',
                  style: Constants.normalSmall.copyWith(color: Constants.grey),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
          Text(
            'Meditation & relaxation',
            style: Constants.boldSmall.copyWith(color: Constants.grey),
          )
        ],
      ),
    );
  }

  Container _scheduleCard() {
    return Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.only(right: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Constants.navBarColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            AntDesign.dashboard,
            color: Constants.white,
            size: 50.0,
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Meditation Zen',
                style: Constants.normalMedium.copyWith(color: Constants.white),
              ),
              const SizedBox(height: 2.0),
              Text(
                '8:00 p.m.',
                style: Constants.normalSmall.copyWith(color: Constants.grey),
                textAlign: TextAlign.end,
              )
            ],
          ),
        ],
      ),
    );
  }
}
