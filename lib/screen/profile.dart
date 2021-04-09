import 'dart:html';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:projectfw/theme_profile.dart';

import 'package:projectfw/components/navbar.dart';
import 'package:projectfw/components/drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Navbar(
        title: "Profile",
      ),
    );
  }
}
