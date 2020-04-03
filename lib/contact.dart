
import 'package:flutter/material.dart';

class Contact extends StatelessWidget{

  String name;
  String experience;

  Contact(this.name, this.experience);

  @override
  Widget build(BuildContext context) {

    final contactName = Container (
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text (
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Inria_Sans",
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );

    final contactExperience = Container (
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 20.0
      ),
      child: Text (
        experience,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Inria_Sans",
            fontSize: 25.0,
            fontWeight: FontWeight.normal,
            color: Colors.grey
        ),
      ),
    );

    final contactInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        contactName,
        contactExperience
      ],
    );

    return contactInfo;
  }

}
