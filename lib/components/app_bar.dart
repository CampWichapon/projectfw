import 'package:flutter/material.dart';
import 'package:projectfw/loginscreen/login_screen.dart';
import 'package:projectfw/screen/bloghis1_screen.dart';
import 'package:projectfw/screen/homescreen/home_screen.dart';
import 'package:projectfw/screen/contact_screen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(44),
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
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          MenuItem(
            title: "About",
            press: () {},
          ),
          MenuItem(
            title: "Blog",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bloghis1()));
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactMe()));
            },
          ),
          MenuItem(
            title: "Login",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
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
    return Material(
      color: Colors.lightBlue[100],
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
