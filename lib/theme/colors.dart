import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.deepPurple,
  Colors.yellow,
  Colors.deepOrange,
  Colors.cyan,
  Colors.lightGreen,
  Colors.indigo,
  Colors.green,
  Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.purple,
  Colors.lime,
  Colors.teal,
  Colors.orange,
  Colors.lightBlue,
  Colors.pink,
];

Color color(index) => colors[index % colors.length];

Color colorMonocromatic(index, color) {
  switch (color) {
    case 'cyan':
      return Colors.cyan[shade(index)];
      break;
    case 'blue':
      return Colors.blue[shade(index)];
      break;
    case 'indigo':
      return Colors.indigo[shade(index)];
      break;
    case 'red':
      return Colors.red[shade(index)];
      break;
    case 'orange':
      return Colors.orange[shade(index)];
      break;
    case 'deepPurple':
      return Colors.deepPurple[shade(index)];
      break;
    default:
      return Colors.purple[shade(index)];
  }
}

num shade(index) => 100 * ((index % 3) + 2);
