import 'package:flutter/material.dart';
import 'package:projectfw/components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/light-blue-background-4.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi campper",
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
