import 'package:flutter/material.dart';
import 'package:flutter_application1/screen/homescreen/bloghis1_screen.dart';

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
        home: bloghis1());
  }
}
