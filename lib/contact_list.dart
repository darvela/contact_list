import 'package:flutter/material.dart';
import 'package:contactlist/contact.dart';

class ContactList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final list = ListView(
      children: <Widget>[
        Contact("Juan Diego"),
        Contact("Pedro Jose"),
        Contact("Edna Rocio")
      ],
    );
    return list;
  }

}