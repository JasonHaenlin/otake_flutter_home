import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/auth/auth_bloc.dart';
import 'package:otake_flutter_home/blocs/auth/auth_state.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/loading/loading_bloc.dart';
import 'package:otake_flutter_home/blocs/loading/loading_state.dart';
import 'package:otake_flutter_home/components/progress_indicator_ctrl.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class UnitMenu extends StatelessWidget {
  const UnitMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authbloc = BlocProvider.of<AuthBloc>(context).authBloc;
    final _loadingBloc = BlocProvider.of<LoadingBloc>(context).loadingBloc;

    return Container(
      color: kColorAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32.0),
            InkWell(
              onTap: () {
                _authbloc.dispatch(AuthEvent.logout);
                _loadingBloc.dispatch(LoadingEvent.progress);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text('Logout', style: Theme.of(context).textTheme.display2),
                  ],
                ),
              ),
            ),
            ProgressIndicatorCtrl(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
