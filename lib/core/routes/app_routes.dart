import 'package:flutter/material.dart';
import 'package:islami_app_c19_sun/core/routes/app_routes_name.dart';
import 'package:islami_app_c19_sun/modules/layout/layout_view.dart';
import 'package:islami_app_c19_sun/modules/layout/quran/quran_details_view.dart';
import 'package:islami_app_c19_sun/modules/splash/splash_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutesName.initial: (context) => const SplashView(),
    AppRoutesName.layout: (context) => const LayoutView(),
    AppRoutesName.quran: (context) => const QuranDetailsView(),
  };
}
