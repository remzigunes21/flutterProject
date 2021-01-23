import 'package:flutter/material.dart';
import 'package:phone_book/contacts/ContactCreate.dart';
import 'package:phone_book/model/Contact.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> contacts;

  @override
  void initState() {
    contacts = Contact.contacts;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Contact.contacts.sort((a, b) => b.name[0].compareTo(a.name[0]));
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactCreate()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            Contact contact = contacts[index];
            return Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://placekitten.com/200/200",
                        ),
                        child: Text(
                          contact.name[0],
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(contact.name),
                            Text(contact.phoneNumber),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
