import 'package:flutter/material.dart';
import 'package:projectfw/components/app_bar.dart';
import 'package:projectfw/components/body_home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      //height: size.height,
      //width: size.width,
      /*decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/light-blue-background-4.jpg"),
          fit: BoxFit.cover,
        ),
      ),*/
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomAppBar(),
          Bodyhomescreen(),
        ],
      ),
    );
  }
}
