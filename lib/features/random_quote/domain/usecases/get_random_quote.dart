import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failure.dart';
import 'package:quotes/core/use-cases/usecase.dart';
import 'package:quotes/features/random_quote/domain/entities/quote.dart';
import 'package:quotes/features/random_quote/domain/repositories/quote_repository.dart';

class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});

  @override
  Future<Either<Failure, Quote>> call(NoParams params) =>
    quoteRepository.getRandomQuote();

}
