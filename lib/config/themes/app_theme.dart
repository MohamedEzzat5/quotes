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
    appBarTheme: const  AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),

    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500,
          height: 1.3),
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