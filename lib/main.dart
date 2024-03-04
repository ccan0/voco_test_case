import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voco_test_case/core/route/app_routes/app_routes.dart';
import 'package:voco_test_case/presentation/views/login_view/view/login_view.dart';

import 'utilities/constants/route_constants/route_constants.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Voco Test Case',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants.initial,
        routes: AppRoutes().appRoutes,
        home: LoginView(),
      ),
    );
  }
}
