import 'package:flutter/material.dart';
import 'package:projectfw/constants.dart';
import 'package:projectfw/screen/homescreen/home_screen.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First Webapp in Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        home: HomeScreen());
  }
}
