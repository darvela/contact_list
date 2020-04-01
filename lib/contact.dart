import 'package:flutter/material.dart';

class Contact extends StatelessWidget{

  String name = "Juan Diego";


  Contact(this.name);

  @override
  Widget build(BuildContext context) {
    final contactInfo = Container(
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Baloo_Thambi_2",
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      )
    );
    return contactInfo;
  }

}
