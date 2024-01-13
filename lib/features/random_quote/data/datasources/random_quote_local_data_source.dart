import 'package:quotes/features/random_quote/data/models/quote_model.dart';

abstract class RandomQuoteLocalDataSource{
  Future<QuoteModel>  getLastQuote();
  Future<void> cacheQuote(QuoteModel quote);
}