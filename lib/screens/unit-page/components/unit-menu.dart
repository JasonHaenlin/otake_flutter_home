import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/auth/auth_bloc.dart';
import 'package:otake_flutter_home/blocs/auth/auth_state.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class UnitMenu extends StatelessWidget {
  const UnitMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authbloc = BlocProvider.of<AuthBloc>(context).authBloc;

    return Container(
      color: kColorAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32.0),
            InkWell(
              onTap: () => print('menu 1 tapped'),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child:
                    Text('menu 1', style: Theme.of(context).textTheme.display2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:
                  Text('menu 2', style: Theme.of(context).textTheme.display2),
            ),
            InkWell(
              onTap: () => authbloc.dispatch(AuthEvent.logout),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child:
                    Text('LOGOUT', style: Theme.of(context).textTheme.display2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
