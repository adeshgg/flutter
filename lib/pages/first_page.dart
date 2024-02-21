// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/about_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // variables defined inside an stateful Widget, are considered to states and
  //you can change there value using setState(), using setState() will also rebuild the Widget tree
  // ensuring that the change is reflected in the UI
  int _selectedPageIndex = 0;

  void _handleNavigation(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List _pages = [HomePage(), SettingsPage(), AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue[300],
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _handleNavigation,
          items: [
            // home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
