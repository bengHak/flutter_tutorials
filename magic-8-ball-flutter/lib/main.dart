import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('Random Ball'),
          ),
          body: RandomBall(),
        ),
      ),
    );

class RandomBall extends StatefulWidget {
  @override
  _RandomBallState createState() => _RandomBallState();
}

class _RandomBallState extends State<RandomBall> {
  int ballNumber = 1;

  void handleClick() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: handleClick,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
