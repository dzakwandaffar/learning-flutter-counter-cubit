import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_cubit/app.dart';
// import 'package:flutter_counter_cubit/counter/cubit/counter_cubit.dart';
import 'package:flutter_counter_cubit/counter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();

  runApp(const CounterApp());
  //   CounterCubit counter = CounterCubit();

  // counter.increment();
  // counter.decrement();
  // counter.increment();
  // counter.increment();

}