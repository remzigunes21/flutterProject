import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/welcome_to.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        theme: ThemeData.dark(),
        home: QuizScreen()
    );
  }
}

