import 'package:bookly_app/app.dart';
import 'package:bookly_app/core/class/service_locator.dart';
import 'package:bookly_app/simble_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimbleBlocObserver();
  setupServiceLocator();
  runApp(const BooklyApp());
}
