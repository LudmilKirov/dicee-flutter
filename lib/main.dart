import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonPressed = 6;
  int rightButtonPressed = 6;

  void randomNumber() {
    setState(() {
      leftButtonPressed = Random().nextInt(6) + 1;
      rightButtonPressed = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
                print('Left is pressed');
              },
              child: Image.asset('images/dice$leftButtonPressed.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNumber();
                print('Right is pressed');
              },
              child: Image.asset('images/dice$rightButtonPressed.png'),
            ),
          ),
        ],
      ),
    );
  }
}
