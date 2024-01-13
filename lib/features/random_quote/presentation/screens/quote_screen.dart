import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_strings.dart';
import '../widgets/quote_screen_body.dart';

class QuoteScreen extends StatelessWidget {
   QuoteScreen({super.key});
final appBar = AppBar(
  title: const Text(AppStrings.appName,),
);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar,
      body: const QuoteScreenBody(),
    );
  }
}


