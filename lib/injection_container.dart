import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quotes/core/api/api_consumer.dart';
import 'package:quotes/core/api/app_interceptor.dart';
import 'package:quotes/core/api/dio_consumer.dart';
import 'package:quotes/core/network/network_info.dart';
import 'package:quotes/features/random_quote/data/datasources/random_quote_local_data_source.dart';
import 'package:quotes/features/random_quote/data/datasources/random_quote_remote_data_source.dart';
import 'package:quotes/features/random_quote/data/repositories/quote_repository_impl.dart';
import 'package:quotes/features/random_quote/domain/repositories/quote_repository.dart';
import 'package:quotes/features/random_quote/domain/usecases/get_random_quote.dart';
import 'package:quotes/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! features
  //Blocs
  sl.registerFactory(() => RandomQuoteCubit(getRandomQuoteUseCase: sl()));
  //use Cases
  sl.registerLazySingleton(() => GetRandomQuote(quoteRepository: sl()));
  // Repository
  sl.registerLazySingleton<QuoteRepository>(() => QuoteRepositoryImpl(
      randomQuoteRemoteDataSource: sl(),
      randomQuoteLocalDataSource: sl(),
      networkInfo: sl()));
  //Data Sources
  sl.registerLazySingleton<RandomQuoteLocalDataSource>(
      () => RandomQuoteLocalDataSourceImpl(sharedPreferences: sl()));
  sl.registerLazySingleton<RandomQuoteRemoteDataSource>(
      () => RandomQuoteRemoteDataSourceImpl(apiConsumer: sl()));

//!core
  //network info
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

//! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());
}
