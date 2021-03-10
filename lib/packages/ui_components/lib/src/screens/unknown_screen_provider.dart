import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';

class UnknownScreenProvider extends StatelessWidget {
  const UnknownScreenProvider();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(title: 'Error 404'),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Center(
        child: Text(
          'The requested screen could not be found.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
