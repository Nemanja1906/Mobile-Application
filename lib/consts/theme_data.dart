import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';

class Styles {
  static ThemeData themeData({required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      useMaterial3: true, // ✅ važno za NavigationBar
      scaffoldBackgroundColor: isDarkTheme
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,
      cardColor: isDarkTheme
          ? const Color.fromARGB(255, 13, 6, 37)
          : AppColors.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: isDarkTheme 
        ? AppColors.darkScaffoldColor 
        : AppColors.lightScaffoldColor,
      )
    );
  }
}
