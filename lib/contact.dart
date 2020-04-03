import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contact extends StatelessWidget {
  String name;
  String experience;
  String pathImage;
    int hexColor;

  Contact(this.name, this.experience, this.pathImage, this.hexColor);

  @override
  Widget build(BuildContext context) {

    BoxDecoration myBoxDecoration() {
      return BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFe6e6e6),
            width: 1.0,
          ),
        ),
      );
    }

    final photo = Container(
      margin: EdgeInsets.only(
        left: 10.0,
      ),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final contactName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 10.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Inria_Sans",
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );

    final contactExperience = Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
      child: Text(
        "Experience: " + experience,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Inria_Sans",
            fontSize: 22.0,
            fontWeight: FontWeight.normal,
            color: Colors.grey),
      ),
    );

    final contactText = Container(
      width: 230.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[contactName, contactExperience],
      ),
    );

    final mailIcon = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.mail,
        color: Color(hexColor)
      ),
    );

    final lineSeparator = Container(
      decoration: myBoxDecoration(),
      margin: EdgeInsets.only(
          bottom: 15.0,
          top: 15.0
      ),
    );

    final contactInfo = Container(
      child: Row(
        children: <Widget>[photo, contactText, mailIcon],
      ),
    );


    final contact = Column(
      children: <Widget>[
        contactInfo,
        lineSeparator
      ],
    );

    return contact;
  }
}
