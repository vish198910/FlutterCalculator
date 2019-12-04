import "package:flutter/material.dart";
import "HomePage.dart";
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