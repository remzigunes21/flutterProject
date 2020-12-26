import 'package:first_app/questions.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function ansverQuestions;

  Quiz(
      {@required this.questions,
      @required this.ansverQuestions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => ansverQuestions(answer["score"]), answer["text"]))
            .toList()
      ],
    );
  }
}
