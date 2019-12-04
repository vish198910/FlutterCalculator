import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            TextField(
              keyboardType: TextInputType.number,
            ),
            Padding(padding: const EdgeInsets.only(top: 10.0
            ),),
            TextField(
              keyboardType: TextInputType.number,
            ),
            Padding(padding: const EdgeInsets.only(top: 10.0
            ),),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new OperatorWidget(operation: "-",),
                new OperatorWidget(operation: "+",)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OperatorWidget(operation: "*",),
                OperatorWidget(operation: "/",)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OperatorWidget extends StatelessWidget {
  final String operation;
  const OperatorWidget({
    this.operation
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},
    color: Colors.green,
    child: Text(this.operation),);
  }
}
