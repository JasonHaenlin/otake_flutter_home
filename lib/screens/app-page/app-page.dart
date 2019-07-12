import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/auth/auth_bloc.dart';
import 'package:otake_flutter_home/blocs/auth/auth_state.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/screens/login-page/login-page.dart';
import 'package:otake_flutter_home/screens/unit-page/unit_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context).authBloc;
    authBloc.dispatch(AuthEvent.authenticated);

    return StreamBuilder(
      stream: authBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot snapshot) =>
          snapshot.hasData && snapshot.data ? UnitPage() : LoginPage(),
    );
  }
}
