import 'package:flutter/material.dart';
import 'package:contactlist/contact.dart';

class ContactList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final list = ListView(
      children: <Widget>[
    Container(
    margin: EdgeInsets.only(
        top: 50.0
    ),
    ),
        Contact("Juan Diego", "1 year","assets/img/1diego.jpg",0xFFbdbdbd),
        Contact("Pedro", "7 years","assets/img/2juan.jpg",0xFFff0000),
        Contact("Edna Rocio", "20 years","assets/img/3astrid.jpg",0xFFff0000),
        Contact("Cristina", "3 years","assets/img/4cristina.jpg",0xFFff0000),
        Contact("Astrid", "4 years","assets/img/5liliana.jpg",0xFFff0000),
        Contact("Diego", "16 years","assets/img/6alberto.jpg",0xFFff0000),
        Contact("Constanza", "9 years","assets/img/7rocio.jpg",0xFFff0000),
        Contact("Liliana", "2 years","assets/img/8constanza.jpg",0xFFff0000),
        Contact("Alberto", "2 years","assets/img/9pedro.jpg",0xFFff0000),
        Contact("Pato Donald", "1 years","assets/img/10tonto.jpeg",0xFFff0000)
      ],
    );
    return list;
  }

}