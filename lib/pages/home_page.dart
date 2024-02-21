import 'package:flutter/material.dart';
import 'package:myapp/pages/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to About Page"),
          onPressed: () {
            Navigator.pushNamed(context, "/aboutpage");
          },
        ),
      ),
    );
  }
}
