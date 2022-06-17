import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            width: 300,
            "https://raw.githubusercontent.com/robsonsilv4/flutter-free-courses/master/flutter.png"),
      ),
    );
  }
}
