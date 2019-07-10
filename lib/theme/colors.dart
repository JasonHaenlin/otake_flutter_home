import 'package:flutter/material.dart';

const kColorPrimaryDark = const Color(0xFF0097A7);
const kColorPrimaryLight = const Color(0xFFB2EBF2);
const kColorPrimary = const Color(0xFF00BCD4);
const kColorTextIcon = const Color(0xFFFFFFFF);
const kColorDivider = const Color(0xFFBDBDBD);
const kColorError = const Color(0xFFC5032B);
const kColorSecondary = const Color(0xFF89dde5);
const kColorthirdary = const Color(0xFF60dae5);
const kColorPrimaryText = const Color(0xFF212121);
const kColorSecondaryText = const Color(0xFF757575);
const kColorAccent = const Color(0xFFFF9800);

List<Color> colors = [
  const Color(0xff4cffe1),
  const Color(0xfff6ffa8),
  const Color(0xff9d5ad9),
  const Color(0xffff8c7f),
  const Color(0xff9ad2cb),
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
      return Colors.grey[shade(index)];
  }
}

num shade(index) => 100 * ((index % 4) + 2);
