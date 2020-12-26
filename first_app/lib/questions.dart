import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionsText;

  Question(this.questionsText);
  @override
  Widget build(BuildContext context) {
    var white60 = Colors.white60;
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      color: Colors.blue,
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 28, color: white60),
        textAlign: TextAlign.center,
      ),
    );
  }
}
