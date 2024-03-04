import 'package:flutter/material.dart';
import 'package:voco_test_case/presentation/views/users_view/view/users_view.dart';
import 'package:voco_test_case/utilities/constants/route_constants/route_constants.dart';

class AppRoutes {
  Map <String, WidgetBuilder> appRoutes = {
    RouteConstants.usersView: (BuildContext context) => const UsersView(),
  };
}