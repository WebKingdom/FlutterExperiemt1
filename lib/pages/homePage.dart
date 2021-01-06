import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Can create classes for each screen in navigation bar
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.access_time),
        ],
      ),
    );
  }
}
