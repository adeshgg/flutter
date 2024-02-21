// ignore_for_file: prefer_const_constructors

import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp({super.key});
  MyApp({Key? key}) : super(key: key);

  // App bar, body, ... widgets
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(
  //         backgroundColor: Colors.deepPurple,
  //         appBar: AppBar(
  //           title: const Text(
  //             "My APP",
  //           ),
  //           backgroundColor: Colors.deepPurple[100],
  //           elevation: 10,
  //           leading: const Icon(Icons.menu),
  //           actions: [
  //             IconButton(
  //                 onPressed: () {}, icon: const Icon(Icons.local_activity)),
  //             IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
  //           ],
  //         ),
  //         body: Center(
  //           child: Container(
  //             width: 200,
  //             height: 200,
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(25),
  //                 color: Colors.deepPurple[200]),
  //             padding: const EdgeInsets.all(25),
  //             // child: const Text(
  //             //   "Adesh",
  //             //   style: TextStyle(
  //             //     color: Colors.white,
  //             //     fontWeight: FontWeight.bold,
  //             //     letterSpacing: 5,
  //             //   ),
  //             //   textAlign: TextAlign.center,
  //             // ),
  //             child: const Icon(
  //               Icons.home,
  //               color: Colors.white,
  //               size: 64,
  //             ),
  //           ),
  //         ),
  //       ));
  // }

  // Row, Column, Stack and ListView widgets
  // List names = ["Adesh", "is", "learning", "flutter"];

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(
  //           backgroundColor: Colors.deepPurple[100],
  //           body: ListView.builder(
  //             itemCount: names.length,
  //             itemBuilder: (context, index) => ListTile(
  //               title: Text(names[index]),
  //             ),
  //           )));
  // }

  // GridView
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(
  //           backgroundColor: Colors.deepPurple[100],
  //           body: GridView.builder(
  //               itemCount: 64,
  //               // how many in each row
  //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //                   crossAxisCount: 8),
  //               itemBuilder: (context, index) => Container(
  //                     color: Colors.deepPurple,
  //                     margin: EdgeInsets.all(2),
  //                   ))));
  // }

  // gestures detector (event listner)

  void handleTap() {
    print("You tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.deepPurple[100],
            body: Center(
              child: GestureDetector(
                // onTap: () => {print("User tapped")},
                onTap: handleTap,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurple,
                  child: Center(
                      child: Text(
                    "Tap Me!",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            )));
  }
}
