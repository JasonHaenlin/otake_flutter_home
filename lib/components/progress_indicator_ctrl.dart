import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/loading/loading_bloc.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class ProgressIndicatorCtrl extends StatelessWidget {
  final Color color;
  const ProgressIndicatorCtrl({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _loadingBloc = BlocProvider.of<LoadingBloc>(context).loadingBloc;

    return StreamBuilder(
      stream: _loadingBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot snapshot) =>
          snapshot.hasData && snapshot.data
              ? Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        this.color != null ? this.color : kColorAccent),
                  ),
                )
              : Container(),
    );
  }
}
