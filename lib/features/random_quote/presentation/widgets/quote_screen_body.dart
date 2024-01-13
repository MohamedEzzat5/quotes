import 'package:flutter/material.dart';
import 'package:quotes/features/random_quote/presentation/widgets/quote_content.dart';
import 'package:quotes/features/random_quote/presentation/widgets/refresh_icon.dart';

class QuoteScreenBody extends StatelessWidget {
  const QuoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        QuoteContent(),
        RefreshIcon(),
      ],
    );
  }
}
