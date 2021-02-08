import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  Text(
                    "Let's Play Quiz!!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter Your Information Below!!!"),
                  Spacer(),
                  TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2340),
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.blueGrey[300]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Tap'),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kPrimaryGradient, kPrimaryGradient]),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Text(
                        "Lets Start Quiz",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ), //  2/6
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
