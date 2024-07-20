import 'package:bookly_app/app.dart';
import 'package:bookly_app/core/class/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}
