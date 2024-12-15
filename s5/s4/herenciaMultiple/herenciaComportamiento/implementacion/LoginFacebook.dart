import '../../herenciaComportamiento/clasesAbstractas/Login.dart';

// Abstraccion de comportamiento de clases, de comportamiento similar
class Loginfacebook implements Login {
  @override
  void login() {
    print('Login with Facebook');
  }

  @override
  void logout() {
    print('Logout with Facebook');
  }

  @override
  void register() {
    print('Register with Facebook');
  }
  
}