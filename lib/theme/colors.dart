import 'package:flutter/material.dart';

const List<Color> colors = [
  // Colors.deepPurple,
  // Colors.yellow,
  // Colors.deepOrange,
  // Colors.cyan,
  // Colors.lightGreen,
  // Colors.indigo,
  // Colors.green,
  // Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.purple,
  Colors.lime,
  Colors.teal,
  Colors.orange,
  Colors.lightBlue,
  // Colors.pink,
];

Color color(index) => colors[index % colors.length];
