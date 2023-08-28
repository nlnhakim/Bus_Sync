import 'package:flutter/material.dart';
import 'package:flutterviz/Welcome.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',

      /// TODO Replace with your first screen class name
      home: Welcome(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(""),
    );
  }
}
