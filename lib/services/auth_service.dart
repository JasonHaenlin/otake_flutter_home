class AuthService {
  bool authenticated = false;

  Future<bool> login({username, password}) async {
    await Future.delayed(const Duration(seconds: 1));
    // authenticated = (username == 'admin' && password == 'admin');
    authenticated = true;
    print('authenticated : ' + authenticated.toString());
    return authenticated;
  }

  Future<bool> logout() async {
    await Future.delayed(const Duration(seconds: 1));
    authenticated = false;
    return authenticated;
  }

  Future<bool> isAuthenticated({username, password}) async {
    await Future.delayed(const Duration(seconds: 1));
    return authenticated;
  }
}

AuthService authService = AuthService();
