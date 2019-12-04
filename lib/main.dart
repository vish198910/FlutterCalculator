import "package:flutter/material.dart";
import 'package:flutter_calculator/HomePage.dart';

void main(){
  runApp(MyCalculator());
}
class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
    );
  }
}
