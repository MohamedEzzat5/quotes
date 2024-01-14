import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:quotes/app.dart';
import 'package:quotes/bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const QuoteApp());
}

