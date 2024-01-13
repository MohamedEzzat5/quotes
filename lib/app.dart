import 'package:flutter/material.dart';
import 'package:quotes/config/routes/app_routers.dart';
import 'package:quotes/config/themes/app_theme.dart';
import 'package:quotes/core/utils/app_strings.dart';


class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}

