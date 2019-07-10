import 'package:otake_flutter_home/blocs/bloc_base.dart';
import 'package:otake_flutter_home/services/auth_service.dart';

enum AuthEvent { login, logout, authenticated }

class AuthState extends BlocBase<AuthEvent, bool> {
  AuthState() : super(seed: false, initEvent: AuthEvent.logout);

  @override
  Stream<bool> eventToState(AuthEvent event, [dynamic data]) async* {
    switch (event) {
      case AuthEvent.login:
        yield await authService.login(
          username: data != null ? data['username'] : '',
          password: data != null ? data['password'] : '',
        );
        break;
      case AuthEvent.logout:
        yield await authService.logout();
        break;
      case AuthEvent.authenticated:
        yield await authService.isAuthenticated();
        break;
      default:
    }
  }
}
