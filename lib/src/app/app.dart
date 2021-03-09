import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/home/widgets/home_screen_provider.dart';
import 'package:flutter_navigator_2_example/packages/features/login/widgets/login_screen_provider.dart';
import 'package:flutter_navigator_2_example/packages/features/shows/widgets/tv_show_screen_provider.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    final snackBarService = Provider.of<SnackBarService>(context);

    return MaterialApp(
      title: 'Navigator 2.0 Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      scaffoldMessengerKey: snackBarService.messengerKey,
      home: const TvShowScreenProvider(showName: 'WandaVision'),
    );
  }
}
