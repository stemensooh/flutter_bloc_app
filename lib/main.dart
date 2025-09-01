import 'package:bloc/bloc.dart';
import 'package:bloc_app/counter/counter_observer.dart';
import 'package:bloc_app/timer/timerApp.dart';
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = const CounterObserver();
  // runApp(CounterApp());
  runApp(const TimerApp());
}