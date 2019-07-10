import 'package:flutter/material.dart';
import 'package:otake_flutter_home/components/IconGradient.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/screens/login-page/components/login-form.dart';
import 'package:otake_flutter_home/screens/unit-page/unit_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: LoginForm(
          passwordController: _passwordController,
          usernameController: _usernameController,
        ),
      ),
    );
  }
}
