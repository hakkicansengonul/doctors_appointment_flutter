import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doctors_appointment_flutter/screens/home_screen.dart';
import 'package:doctors_appointment_flutter/screens/message.dart';
import 'package:doctors_appointment_flutter/screens/profile.dart';
import 'package:flutter/material.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        index: 0,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.paste,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0
          ? HomePage()
          : newindex == 2
              ? MessagePage()
              : newindex == 3
                  ? ProfilePage()
                  : null,
    );
  }
}
