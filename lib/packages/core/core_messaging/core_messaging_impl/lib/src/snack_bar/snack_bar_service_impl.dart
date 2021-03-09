import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SnackBarService)
class SnackBarServiceImpl implements SnackBarService {
  final GlobalKey<ScaffoldMessengerState> _messengerKey;

  SnackBarServiceImpl() : _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  GlobalKey<ScaffoldMessengerState> get messengerKey => _messengerKey;

  @override
  void showSnackBar(String message) {
    hideSnackBar();
    _messengerKey.currentState?.showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.grey[900],
    ));
  }

  @override
  void hideSnackBar() {
    _messengerKey.currentState?.hideCurrentSnackBar();
  }
}
