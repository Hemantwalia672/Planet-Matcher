import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PlanetPage(),
      ),
    );

class PlanetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Center(
          child: Text(
            'KNOW YOUR PLANET',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'MajorMono',
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Planet(),
    );
  }
}

class Planet extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet> {
  int planetNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'YOU ARE PLANET',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontSize: 20.0),
          ),
          SizedBox(
            height: 20.0,
            width: 200.0,
            child: Divider(
              thickness: 1.0,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                planetNumber = Random().nextInt(9) + 1;
              });
            },
            child: Image.asset('images/planet$planetNumber.jpg'),
          ),
        ],
      ),
    );
  }
}
