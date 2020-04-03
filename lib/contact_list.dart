import 'package:flutter/material.dart';
import 'package:contactlist/contact.dart';

class ContactList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final list = ListView(
      children: <Widget>[
        Contact("Juan Diego", "1 año"),
        Contact("Pedro", "7 años"),
        Contact("Edna Rocio", "20 años"),
        Contact("Diego", "3 años"),
        Contact("Astrid", "4 años"),
        Contact("Critsina", "16 años"),
        Contact("Liliana", "9 años"),
        Contact("Alberto", "2 años"),
        Contact("Constanza", "2 años"),
        Contact("Pato Donald", "1 años"),
        Contact("Almost before we knew", "1 años")
      ],
    );
    return list;
  }

}