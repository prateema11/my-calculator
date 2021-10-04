import 'package:flutter/material.dart';
import 'package:my_calculator/ui/calc.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Calculator',
    theme: ThemeData(
      primaryColor: Colors.lightGreen
    ),
    home: Calc(),
  ));
}