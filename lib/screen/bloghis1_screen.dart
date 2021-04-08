import 'package:flutter/material.dart';
import 'package:projectfw/app_theme.dart';
import 'package:projectfw/loginscreen/login_screen.dart';
import 'package:projectfw/screen/homescreen/home_screen.dart';

// ignore: camel_case_types
class bloghis1 extends StatefulWidget {
  @override
  _bloghis1 createState() => _bloghis1();
}

// ignore: camel_case_types
class _bloghis1 extends State<bloghis1> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Programming of computer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '03/04/2021',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.red, Icons.favorite, 'Like'),
          _buildButtonColumn(color, Icons.saved_search, 'Save blog'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    Widget foundme = Container(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8, left: 5, right: 25),
            child: Text(
              'Contact us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildButtonColumn(Colors.green, Icons.call, '061-4896790'),
          Container(
            padding: const EdgeInsets.only(bottom: 8, left: 25),
          ),
          _buildButtonColumn(
              Colors.lightBlue, Icons.crop_square_outlined, 'Facebook'),
          Container(
            padding: const EdgeInsets.only(bottom: 8, left: 25),
          ),
        ],
      ),
    );
    return MaterialApp(
        title: 'Blog',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppTheme.dark_grey,
        ),
        home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.green,
            title: Text('Programmer in Computer Engineer'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.vpn_key),
                tooltip: 'Login',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              IconButton(
                  icon: const Icon(Icons.home),
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ],
          ),
          body: ListView(
            children: [
              Image.asset(
                'assets/images/se.jpg',
                width: 600,
                height: 400,
                fit: BoxFit.contain,
              ),
              titleSection,
              textSection,
              buttonSection,
              foundme,
            ],
          ),
        ));
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8, bottom: 20),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
