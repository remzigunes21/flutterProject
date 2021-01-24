import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phone_book/database/db_helper.dart';
import 'package:phone_book/model/Contact.dart';

class ContactCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Contacts"),
      ),
      body: SingleChildScrollView(child: ContactForm()),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  String name;
  String phoneNumber;

  File _file;
  DbHelper _dbHelper;
  final picker = ImagePicker();

  @override
  void initState() {
    _dbHelper = DbHelper();
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                _file == null ? "assets/img/person.jpg" : _file.path,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              Positioned(
                  bottom: 8,
                  right: 8,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.camera_alt),
                    onPressed: getFile,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "name is required";
                        }
                      },
                      onSaved: (newValue) {
                        name = newValue;
                      },
                      decoration: InputDecoration(hintText: "Contact Name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(hintText: "Phone Number"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "phone is required";
                        }
                      },
                      onSaved: (newValue) {
                        phoneNumber = newValue;
                      },
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();

                        var contact = Contact(
                            name: name,
                            phoneNumber: phoneNumber,
                            avatar: _file == null ? "" : _file.path);

                        await _dbHelper.insertContact(contact);

                        var snackBar = Scaffold.of(context).showSnackBar(
                            SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text("$name has been saved")));
                        snackBar.closed
                            .then((value) => {Navigator.pop(context)});
                      }
                    },
                    child: Text("Create Contact"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getFile() async {
    var pickedFile = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _file = pickedFile;
    });
  }
}
