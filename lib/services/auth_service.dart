import 'package:otake_flutter_home/core/storage.dart';

const _kKeyUsername = 'username';
const _kKeyPassword = 'password';

class AuthService {
  bool authenticated = false;

  Future<bool> login({String username, String password}) async {
    await Future.delayed(const Duration(seconds: 1));
    authenticated = (username == 'a' && password == 'a');
    if (authenticated) {
      writeStorage(key: _kKeyUsername, value: username);
      writeStorage(key: _kKeyPassword, value: password);
    }
    print('authenticated : ' + authenticated.toString());
    return authenticated;
  }

  Future<bool> logout() async {
    cleanStorage();
    await Future.delayed(const Duration(seconds: 1));
    authenticated = false;
    return authenticated;
  }

  Future<bool> isAuthenticated() async {
    final username = await readStorage(key: _kKeyUsername);
    final password = await readStorage(key: _kKeyPassword);
    if (username != '' && password != '') {
      authenticated = true;
    } else {
      authenticated = false;
    }
    print('username ' + username + '\tpassword ' + password);
    await Future.delayed(const Duration(seconds: 1));
    return authenticated;
  }
}

AuthService authService = AuthService();
