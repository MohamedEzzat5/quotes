import 'package:flutter/material.dart';
import 'package:quotes/config/routes/app_routers.dart';
import 'package:quotes/core/utils/constants.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello'),

      ),
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, Routes.favouriteQuoteRoute),
        child:  Center(
          child: InkWell(
              onTap: (){Constants.showToast(message: 'Error Happendfgjnfgj',color: Colors.red);},
              child: const Text('Quote',style: TextStyle(color: Colors.blue,fontSize: 20),)),
        ),
      ),
    );
  }
}
