import 'package:flutter/material.dart';

class Cars extends StatelessWidget {
  final List<String> _cardPictures;
  Cars(this._cardPictures);
  @override
  Widget build(Object context) {
    // TODO: implement build
    return Column(
      children: _cardPictures
          .map((e) => Card(
                child: Column(
                  children: [
                    Image.asset("assets/flut.jpeg"),
                    Text("Örnek resimler")
                  ],
                ),
              ))
          .toList(),
    );
  }
}
