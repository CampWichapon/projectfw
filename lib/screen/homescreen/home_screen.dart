import 'package:flutter/material.dart';
import 'package:projectfw/constants.dart';
import 'package:projectfw/screen/homescreen/bloghis1_screen.dart';
import 'package:projectfw/loginscreen/login_screen.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/light-blue-background-4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
