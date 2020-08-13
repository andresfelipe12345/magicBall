import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.indigo,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  String text_ball = "Pregunta!!!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    setState(() {
                      text_ball = returnStringBall();
                    });
                    print(text_ball);
                  },
                  child: Image.asset('images/ball.png'),
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: AutoSizeText(
                    text_ball,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String returnStringBall() {
    var listOptions = new List(7);
    listOptions[0] = "No";
    listOptions[1] = "Si";
    listOptions[2] = "Claro que SI";
    listOptions[3] = "Ya es muy tarde";
    listOptions[4] = "Nunca pasará";
    listOptions[5] = "pregunta de nuevo";
    listOptions[6] = "tal vez";
    int position = Random().nextInt(7);
    return listOptions[position];
  }
}
