import 'package:flutter/material.dart';
import 'first_route.dart';
import 'second_route.dart';
import 'ScreenArguments.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation Basics',
      initialRoute: '/',
      routes: {
        FirstRoute.routename: (context) => const FirstRoute(),
      },
      onGenerateRoute: (settings) {
        // declare routes that are accepting params here
        if (settings.name == SecondRoute.routename) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(builder: (context) {
            return SecondRoute(title: args.title, message: args.message);
          });
        }
        return null;
      },
    ),
  );
}
