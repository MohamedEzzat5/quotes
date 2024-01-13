import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failure.dart';
import 'package:quotes/core/use-cases/usecase.dart';
import 'package:quotes/features/random_quote/domain/entities/quote.dart';

class GetRandomQuote implements UseCase<Quote,NoParams>{

  @override
  Future<Either<Failure,Quote>> call(NoParams params){
    throw UnimplementedError();
  }
}



























// class LoginParams extends Equatable{
//   final String userName;
//   final String password;
//
//   const LoginParams({required this.userName, required this.password});
//   @override
//   List<Object?> get props => [userName,password];
//
// }