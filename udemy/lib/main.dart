import 'package:flutter/material.dart';
import 'package:udemy/components/Cards.dart';
import 'package:udemy/components/managerCars.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstApp();
  }
}

class _MyFirstApp extends State<MyFirstApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.orange, brightness: Brightness.light),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Title Listesi"),
            ),
            body: Container(
                margin: EdgeInsets.all(8.0),
                child: CarsManager(startCars: "Ornek galery test"))));
  }
}
