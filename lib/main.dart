// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:myapp/pages/about_page.dart";
import "package:myapp/pages/home_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/aboutpage": (context) => AboutPage(),
        "/homepage": (context) => HomePage()
      },
    );
  }
}
