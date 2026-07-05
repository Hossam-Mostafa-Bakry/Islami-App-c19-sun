import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppThemeManager {
  static ThemeData getThemeData() => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      backgroundColor: AppColors.primary,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.black,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 12,
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        color: AppColors.secondary,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
