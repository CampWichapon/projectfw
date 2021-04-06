import 'package:flutter/material.dart';
import 'package:projectfw/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "about",
            press: () {},
          ),
          MenuItem(
            title: "Pricing",
            press: () {},
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),
          MenuItem(
            title: "Login",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const MenuItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: kTextcolor.withOpacity(0.3),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
