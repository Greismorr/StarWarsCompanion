import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.backgroundColor,
        secondary: AppColors.accentColor,
        brightness: Brightness.dark),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.backgroundColor,
    ),
  );
}
