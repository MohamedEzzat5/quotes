import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quotes/core/utils/app_colors.dart';
import 'package:quotes/core/widgets/error_widget.dart';
import 'package:quotes/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:quotes/features/random_quote/presentation/widgets/quote_content.dart';
import 'package:quotes/features/random_quote/presentation/widgets/refresh_icon.dart';

class QuoteScreenBody extends StatefulWidget {
  const QuoteScreenBody({super.key});

  @override
  State<QuoteScreenBody> createState() => _QuoteScreenBodyState();
}

class _QuoteScreenBodyState extends State<QuoteScreenBody> {
  getRandomQuote() =>
      BlocProvider.of<RandomQuoteCubit>(context).getRandomQuote();

  @override
  void initState() {
    super.initState();
    getRandomQuote();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomQuoteCubit, RandomQuoteState>(
      builder: (context, state) {
        if (state is RandomQuoteIsLoading) {
          return Center(
              child: SpinKitFadingCircle(
            color: AppColors.primary,
          ));
        } else if (state is RandomQuoteError) {
          return const CustomErrorWidget();
        } else if (state is RandomQuoteLoaded) {
          return Column(
            children: [
              QuoteContent(
                quote: state.quote,
              ),
              InkWell(
                  onTap: () => getRandomQuote(), child: const RefreshIcon()),
            ],
          );
        } else {
          return Center(
              child: SpinKitFadingCircle(
            color: AppColors.primary,
          ));
        }
      },
    );
  }
}
