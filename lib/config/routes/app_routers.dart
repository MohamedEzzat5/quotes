import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_strings.dart';
import 'package:quotes/features/favorite_quote/presentation/screens/favorite_quote_screen.dart';
import 'package:quotes/features/random_quote/presentation/screens/quote_screen.dart';

class Routes {
  static const initialRoute = '/';
  static const favouriteQuoteRoute = '/favouriteQuote';
}

class AppRoutes {
  static Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => QuoteScreen(),
        );

      case Routes.favouriteQuoteRoute:
        return MaterialPageRoute(
          builder: (context) => const FavoriteQuoteScreen(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
