import 'package:flutter/material.dart';
import 'package:projectfw/components/app_bar.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titlesection = Container(
      child: Column(),
    );
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CustomAppBar(),
        ],
      ),
    );
  }
}
