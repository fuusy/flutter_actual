import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.amber,
              ),
              title: Text('HOME')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: Colors.amber,
              ),
              title: Text('Email'))
        ],
      ),
    );
  }
}
