import 'package:flutter/material.dart';

class Navigate {
  static void to(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}
