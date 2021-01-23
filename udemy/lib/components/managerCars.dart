import 'package:flutter/material.dart';
import 'package:udemy/components/Cards.dart';

class CarsManager extends StatefulWidget {
  final String startCars;
  CarsManager({this.startCars});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CarsManager();
  }
}

class _CarsManager extends State<CarsManager> {
  List<String> _cardPictures = [];
  @override
  void initState() {
    _cardPictures.add(widget.startCars);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _cardPictures.add("merhaba");
              });
            },
            child: Text("Resim Ekle"),
          ),
        ),
        Cars(_cardPictures)
      ],
    );
  }
}
