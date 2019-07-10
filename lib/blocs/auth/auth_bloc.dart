import 'package:otake_flutter_home/blocs/auth/auth_state.dart';

class AuthBloc {
  AuthState _auth;

  AuthBloc() : _auth = AuthState();

  AuthState get authBloc => _auth;
}
