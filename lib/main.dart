import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/page/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home:HomePage()
      ),
    );
  }
  // This widget is the root of your application.

}

