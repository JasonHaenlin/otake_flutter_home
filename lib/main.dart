import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/auth/auth_bloc.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/screens/app-page/app-page.dart';
import 'package:otake_flutter_home/theme/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      bloc: AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme(),
        home: AppPage(),
      ),
    );
  }
}
