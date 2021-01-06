import 'package:flutter/material.dart';
import 'package:flutternavbar/navBar.dart';

// Run main app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar',
      theme: ThemeData.dark(),
      home: NavBar(),
    );
  }
}
