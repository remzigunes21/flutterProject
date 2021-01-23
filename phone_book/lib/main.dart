import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Contact> contacts = [
    new Contact(name: "Remzi", phoneNumber: "05523753078"),
    new Contact(name: "Nejla", phoneNumber: "055237576078"),
    new Contact(name: "Mehmet", phoneNumber: "05523753278"),
    new Contact(name: "Ramazan", phoneNumber: "0552375374"),
    new Contact(name: "Abuzer", phoneNumber: "05523753034"),
    new Contact(name: "Hamra", phoneNumber: "05523753045"),
    new Contact(name: "Makbule", phoneNumber: "05523753045"),
    new Contact(name: "Cemre", phoneNumber: "05523753077"),
    new Contact(name: "Hakan", phoneNumber: "05523753076"),
    new Contact(name: "Bahri", phoneNumber: "05523753073"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Home"),
          actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index) {
                Contact contact = contacts[index];
                return Container(
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"),
                        child: Text(
                          contact.name[0],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(contact.name),
                          Text(contact.phoneNumber)
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class Contact {
  String name;
  String phoneNumber;

  Contact({this.name, this.phoneNumber});
}
