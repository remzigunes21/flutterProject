import 'package:flutter/material.dart';
import 'package:phone_book/contacts/ContactsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: ContactsPage());
  }
}
