import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/routes/app_routes.dart';
import 'package:islami_app_c19_sun/core/routes/app_routes_name.dart';
import 'package:islami_app_c19_sun/core/theme/app_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeManager.getThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutesName.initial,
      routes: AppRoutes.routes,
    );
  }
}
