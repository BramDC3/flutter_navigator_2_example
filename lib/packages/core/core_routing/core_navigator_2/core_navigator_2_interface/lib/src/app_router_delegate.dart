import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2/core_navigator_2_interface/lib/core_navigator_2_interface.dart';

abstract class AppRouterDelegate extends RouterDelegate<AppPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppPath> {}
