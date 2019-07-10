import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/auth/auth_bloc.dart';
import 'package:otake_flutter_home/blocs/auth/auth_state.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/components/IconGradient.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/screens/unit-page/unit_page.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required TextEditingController passwordController,
    @required TextEditingController usernameController,
  })  : _passwordController = passwordController,
        _usernameController = usernameController,
        super(key: key);

  final TextEditingController _passwordController;
  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context).authBloc;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50.0),
            Column(
              children: <Widget>[
                IconGradient(),
                SizedBox(height: 16.0),
                Text(
                  'Services Manager',
                  style: Theme.of(context).textTheme.display3,
                )
              ],
            ),
            SizedBox(height: 80.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 15.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('CANCEL'),
                    onPressed: () => print('CANCEL'),
                  ),
                  SizedBox(width: 10.0),
                  RaisedButton(
                    elevation: 8.0,
                    color: Colors.cyan,
                    child: Text(
                      'NEXT',
                      style: Theme.of(context).appBarTheme.textTheme.subtitle,
                    ),
                    onPressed: () => authBloc.dispatch(AuthEvent.login, {
                          'username': _usernameController.text,
                          'password': _passwordController.text
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
