import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_colors.dart';
import 'package:quotes/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    textTheme: const TextTheme(
      labelLarge: TextStyle(
          fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary,),
    useMaterial3: false,
  );
}