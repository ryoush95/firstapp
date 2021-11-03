import 'package:firstapp/screen2.dart';
import 'package:firstapp/screen3.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => screen1(),
        '/b' : (context) => screen2(),
        '/c' : (context) => screen3(),
      },
    );
  }
}