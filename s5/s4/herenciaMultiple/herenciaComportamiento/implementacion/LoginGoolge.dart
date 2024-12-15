import '../../herenciaComportamiento/clasesAbstractas/Login.dart';

class Logingoolge implements Login {
  @override
  void login() {
    print('Login with Google');
  }

  @override
  void logout() {
    print('Logout with Google');
  }

  @override
  void register() {
    print('Register with Google');
  }
  
}