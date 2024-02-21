// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        // home
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ]),
    );
  }
}
