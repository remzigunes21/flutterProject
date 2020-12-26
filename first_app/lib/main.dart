import 'package:first_app/answer.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import 'package:first_app/questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void ansverQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        "questionText": "what\'s your favorite color?",
        "answers": [
          {"text": "Black", "score": 10},
          {"text": "Green", "score": 3},
          {"text": "Red", "score": 8},
          {"text": "White", "score": 2},
        ]
      },
      {
        "questionText": "What\'s your fovorite animal?",
        "answers": [
          {"text": "Rabbit", "score": 2},
          {"text": "Lion", "score": 4},
          {"text": "Tiger", "score": 8},
          {"text": "Dog", "score": 6},
        ]
      },
      {
        "questionText": "What\'s your fovorite instructor?",
        "answers": [
          {"text": "Remzi", "score": 6},
          {"text": "Remzi", "score": 6},
          {"text": "Remzi", "score": 6},
          {"text": "Remzi", "score": 6},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                ansverQuestions: ansverQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
