import 'package:flutter/material.dart';
import 'package:weather_app/core/project_routes.dart';

import '../core/app_init.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (route)=>ProjectRoutes.onGenerateRoute(),
    );
  }
}
