import 'package:flutter_navigator_2_example/packages/core/core_authentication/core_authentication_interface/lib/core_authentication_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginViewModel {
  final AuthenticationProvider _authenticationProvider;
  final SnackBarService _snackBarService;

  String? _username;
  String? _password;

  LoginViewModel(
    this._authenticationProvider,
    this._snackBarService,
  );

  void onUsernameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<void> onSignInPressed() async {
    // The if check below doesn't work.
    // Type promotion (String? --> String) is
    // only applicable to local variables.

    // if (_username == null || _password == null) {
    //   return;
    // }

    final username = _username;
    final password = _password;

    if (username == null || password == null) {
      _snackBarService.showSnackBar('Both fields are required');
      return;
    }

    _snackBarService.hideSnackBar();

    final user = User(username: username, password: password);
    await _authenticationProvider.signIn(user);
  }
}
