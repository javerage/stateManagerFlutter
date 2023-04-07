import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:band_names/screens/home_screen.dart';

void main() => runApp(const MyApp());

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      initialRoute: 'home',
      routes: {'home': (_) => const HomeScreen()},
    );
  }
}
