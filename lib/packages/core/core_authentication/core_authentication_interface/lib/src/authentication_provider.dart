import 'entities/user.dart';

abstract class AuthenticationProvider {
  Future<void> signIn(User user);
}
