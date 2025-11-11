import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.darkBlueColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(
        primary: CustomColors.darkBlueColor,
        secondary: CustomColors.blackColor,
        tertiary: CustomColors.redColor,
        onPrimary: CustomColors.whiteColor,
        onSecondary: CustomColors.whiteColor,
        onTertiary: CustomColors.whiteColor
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.whiteColor,
        foregroundColor: CustomColors.darkBlueColor,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: CustomColors.blackColor),
        bodyMedium: TextStyle(color: Colors.black87),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: CustomColors.darkBlueColor,
        unselectedItemColor: CustomColors.blackColor,
        selectedIconTheme: IconThemeData(size: 30.0, color: CustomColors.darkBlueColor),
        unselectedIconTheme: IconThemeData(size: 24.0, color: CustomColors.blackColor),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.darkBlueColor),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal, color: CustomColors.blackColor),
        backgroundColor: CustomColors.whiteColor,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}