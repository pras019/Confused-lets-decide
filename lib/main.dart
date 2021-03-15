import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage()
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Confused? Lets Decide'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
void changeBallNumber(){
  setState(() {
    ballNumber = Random().nextInt(5)+1;
    print('ballNumber= $ballNumber');
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child:FlatButton(
            onPressed:(){
              changeBallNumber();
            },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
      );
  }
}

