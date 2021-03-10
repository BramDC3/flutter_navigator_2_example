import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:provider/provider.dart';

import '../login_viewmodel.dart';

typedef TextChangedCallback = void Function(String);

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(title: 'Login'),
      body: _Body(),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TextField(
              labelText: 'Username',
              hintText: 'BramDC',
              textChangedCallback: vm.onUsernameChanged,
            ),
            const SizedBox(height: 12),
            _TextField(
              labelText: 'Password',
              hintText: '******',
              textChangedCallback: vm.onPasswordChanged,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            const _SignInButton(),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextChangedCallback textChangedCallback;
  final bool obscureText;

  const _TextField({
    required this.labelText,
    required this.hintText,
    required this.textChangedCallback,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: textChangedCallback,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: vm.onSignInPressed,
        child: const Text('Sign in'),
      ),
    );
  }
}
