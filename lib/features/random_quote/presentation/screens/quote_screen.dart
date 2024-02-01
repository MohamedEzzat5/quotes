import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/core/utils/app_strings.dart';
import '../cubit/random_quote_cubit.dart';
import '../widgets/quote_screen_body.dart';

class QuoteScreen extends StatelessWidget {
   QuoteScreen({super.key});
final appBar = AppBar(
  title: const Text(AppStrings.appName,),
);
  @override
  Widget build(BuildContext context) {

    return  RefreshIndicator(
      onRefresh: ()=> BlocProvider.of<RandomQuoteCubit>(context).getRandomQuote(),
      child: Scaffold(
        appBar: appBar,
        body: const QuoteScreenBody(),
      ),
    );
  }
}


