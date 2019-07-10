import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/loading/loading_bloc.dart';
import 'package:otake_flutter_home/blocs/loading/loading_state.dart';
import 'package:otake_flutter_home/screens/login-page/components/login-form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _loadingBloc = BlocProvider.of<LoadingBloc>(context).loadingBloc;

    _loadingBloc.dispatch(LoadingEvent.done);

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
