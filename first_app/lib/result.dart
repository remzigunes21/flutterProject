import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandler;

  Result(this._resultScore, this._resetHandler);

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
    var column = Column(
      children: [
        Container(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
            onPressed: _resetHandler,
            child: Text(
              "Reset Quiz",
              style: TextStyle(fontSize: 16, color: Colors.redAccent),
            ))
      ],
    );
    return Center(
      child: column,
    );
  }
}
