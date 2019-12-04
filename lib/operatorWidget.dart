
import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  final String operation;
  final Function function;
  const OperatorWidget({
    this.operation,
    this.function
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: this.function,
      color: Colors.green,
      child: Text(this.operation),);
  }
}
