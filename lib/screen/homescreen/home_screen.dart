import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application1/constants.dart';
import 'package:flutter_application1/screen/homescreen/bloghis1_screen.dart';
import 'package:flutter_application1/loginscreen/login_screen.dart';

class Homescreen extends StatefulWidget {
  @override
  _Homescreen createState() => _Homescreen();
}

class _Homescreen extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(primaryColor: kPrimaryColor),
    );
  }
}
