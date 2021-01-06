import 'package:flutter/material.dart';
import 'package:flutternavbar/pages/homePage.dart';

import 'pages/searchPage.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selNavBarIndex = 0;

  // TODO put classes for each screen in navigation bar
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text('Map'),
    Text('Account'),
  ];

  void onNavBarTap(int index) {
    setState(() {
      _selNavBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(    // TODO can scaffold have scaffold child/body?
      appBar: AppBar(
        title: Text('Navigation Bar'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          //the text and format on the page
          child: _widgetOptions.elementAt(_selNavBarIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Color.fromARGB(220, 220, 220, 220), size: 24),
        selectedIconTheme: IconThemeData(color: Colors.white, size: 26),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
           backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
           backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            title: Text(
              'Map',
              style: TextStyle(color: Colors.white),
            ),
           backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text(
              'Account',
              style: TextStyle(color: Colors.white),
            ),
           backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selNavBarIndex,
        onTap: onNavBarTap,
      ),
    );
  }
}
