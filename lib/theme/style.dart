import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    accentColor: Colors.cyan,
    hintColor: Colors.white,
    dividerColor: Colors.white,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,

    appBarTheme: AppBarTheme(color: Colors.cyan[300]),

    iconTheme: IconThemeData(color: Colors.white),
    primaryIconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.white),

    // Define the default font family.

    // Define the default TextTheme. Use this to specify the default
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      display1: TextStyle(fontSize: 42.0),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      body1: TextStyle(fontSize: 14.0),
    ),
  );
}
