import 'package:flutter/foundation.dart';

@immutable
class User {
  final String username;
  final String password;

  const User({
    required this.username,
    required this.password,
  });
}
