import 'package:flutter/material.dart';

class FirstDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD7E0FF),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext buildContext) {
              return IconButton(
                color: Colors.cyan,
                focusColor: Colors.amberAccent,
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },

              );
            },
          ),
          backgroundColor: Colors.blueGrey[800],
          title: Text("Merhaba Flutter"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.green, spreadRadius: 3)]),
            child: Image.asset(
              "images/mynephew.jpg",
              width: 200,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
