import 'package:flutter/material.dart';
import 'package:otake_flutter_home/screens/login-page/login-page.dart';
import 'package:otake_flutter_home/theme/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: LoginPage(),
    );
  }
}
