import 'package:flutter/material.dart';
import 'operatorWidget.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0;
  double sum = 0;
  TextEditingController num1Controller = new TextEditingController(text: "0");
  TextEditingController num2Controller = new TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1 = double.parse(num1Controller.text);
      num2 = double.parse(num2Controller.text);
      sum = num1 + num2;
    });

  }
  void doSubtraction(){
    setState(() {
      num1 = double.parse(num1Controller.text);
      num2 = double.parse(num2Controller.text);
      sum = num1 - num2;
    });

  }
  void doDivision(){
    setState(() {
      num1 = double.parse(num1Controller.text);
      num2 = double.parse(num2Controller.text);
      sum = num1 / num2;
    });

  }
  void doMultiplication(){
    setState(() {
      num1 = double.parse(num1Controller.text);
      num2 = double.parse(num2Controller.text);
      sum = num1 * num2;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("OUTPUT: $sum",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple
            ),),
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
            ),
            Padding(padding: const EdgeInsets.only(top: 10.0
            ),),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
            ),
            Padding(padding: const EdgeInsets.only(top: 10.0
            ),),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new OperatorWidget(operation: "-",function: doSubtraction,),
                new OperatorWidget(operation: "+",function: doAddition,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OperatorWidget(operation: "*",function: doMultiplication,),
                OperatorWidget(operation: "/",function: doDivision,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

