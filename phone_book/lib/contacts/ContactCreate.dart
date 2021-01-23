import 'package:flutter/material.dart';
import 'package:phone_book/model/Contact.dart';

class ContactCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Contact.contacts.add(Contact(name: "Remzi", phoneNumber: "04455667676"));
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Contacts"),
      ),
    );
  }
}
