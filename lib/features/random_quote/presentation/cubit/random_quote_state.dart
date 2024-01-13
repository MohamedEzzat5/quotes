part of 'random_quote_cubit.dart';

abstract class RandomQuoteState extends Equatable {
  const RandomQuoteState();

  @override
  List<Object> get props => [];
}

class RandomQuoteInitial extends RandomQuoteState {}
class RandomQuoteLoading extends RandomQuoteState {}
class RandomQuoteFailure extends RandomQuoteState {}
class RandomQuoteSuccess extends RandomQuoteState {}
