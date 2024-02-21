// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue[300],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: Column(children: [
          // Add Drawer header
          DrawerHeader(
              child: Icon(
            Icons.favorite, // App Icon
            size: 48,
          )),

          // Drawer List
          // ListTile(
          //   leading: Icon(Icons.home),
          //   title: Text("H O M E"),
          //   onTap: () {
          //     // go to home page
          //     Navigator.pushNamed(context, "/homepage");
          //   },
          // ),

          ListTile(
            leading: Icon(Icons.more),
            title: Text("A B O U T"),
            onTap: () {
              // pop the drawer first
              // This makes sure that If you go back from the about page to the home the drawer is closed
              Navigator.pop(context);
              // go to about page
              Navigator.pushNamed(context, "/aboutpage");
            },
          )
        ]),
      ),
    );
  }
}
