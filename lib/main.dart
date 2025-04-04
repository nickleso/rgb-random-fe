import 'package:flutter/material.dart';
import 'package:rgb_randomizer/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

/// RGB Randomizer application root widget
/// based on Flutter Empty template and Material library
class MainApp extends StatelessWidget {
  /// StatelessWidget class constructor
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RGB Randomizer',
      home: Scaffold(body: HomePage()),
    );
  }
}
