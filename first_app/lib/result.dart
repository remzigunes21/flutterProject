import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;

  Result(this._resultScore);

  String get resultPhrase {
    String resultText;
    if (_resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (_resultScore <= 12) {
      resultText = "Preety likeable!";
    } else if (_resultScore <= 16) {
      resultText = "You are .... Strange!";
    } else {
      resultText = "You are so bad!!!!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
