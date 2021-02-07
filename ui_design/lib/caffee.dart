import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(brightness: Brightness.light,),
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage("assets/images/mynephew.jpg"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mithat & Mülkiye Güneş",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                      fontFamily: "Satisfy"),
                ),
                Text(
                  'Canım yeğenim',
                  style: GoogleFonts.pacifico(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown[900],
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(10, 10))),
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Merhaba ben zümraa",
                        style: GoogleFonts.padauk(
                            color: Colors.white, fontSize: 24),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.brown[900],
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Telefon Numarası",
                          style: GoogleFonts.padauk(
                              color: Colors.white, fontSize: 24))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
