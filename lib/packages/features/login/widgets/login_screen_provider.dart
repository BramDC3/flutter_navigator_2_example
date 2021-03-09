import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../login_viewmodel.dart';
import 'login_screen.dart';

class LoginScreenProvider extends StatelessWidget {
  const LoginScreenProvider();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => di.get<LoginViewModel>(),
      child: const LoginScreen(),
    );
  }
}
