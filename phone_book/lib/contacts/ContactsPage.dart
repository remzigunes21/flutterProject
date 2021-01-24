import 'package:flutter/material.dart';
import 'package:phone_book/contacts/ContactCreate.dart';
import 'package:phone_book/database/db_helper.dart';
import 'package:phone_book/model/Contact.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> contacts;

  DbHelper _dbHelper;

  @override
  void initState() {
    _dbHelper = DbHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        body: FutureBuilder(
            future: _dbHelper.getContacts(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              if (snapshot.data.isEmpty) {
                return Text("Your Contact list empty");
              }
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Contact contact = snapshot.data[index];
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        _dbHelper.removeContact(contact.id);

                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${contact.name} has been deleted"),
                            action: SnackBarAction(
                              label: "UNDO",
                              onPressed: () {
                                _dbHelper.insertContact(contact);
                              },
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            contact.avatar.isEmpty
                                ? "assets/img/person.jpg"
                                : contact.avatar,
                          ),
                          child: Text(
                            contact.name[0],
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        title: Text(contact.name),
                        subtitle: Text(contact.phoneNumber),
                      ),
                    );
                  });
            }));
  }
}
