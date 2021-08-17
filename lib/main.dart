import 'package:portfolio/layout.dart';
import 'package:portfolio/login/laptop_login.dart';
import 'package:portfolio/login/mobile_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.purpleAccent),
      routes: {
        '/': (context) => Layout(),
        '/desklogin': (context) => LaptopLogin(),
        '/mobilelogin': (context) => MobileLogin(),
      },
    );
  }
}