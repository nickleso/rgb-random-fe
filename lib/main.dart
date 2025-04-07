import 'package:flutter/material.dart';
import 'package:rgb_randomizer/core/theme/theme.dart';
import 'package:rgb_randomizer/features/rgb/presentation/pages/home_page.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RGB Randomizer',
      theme: RgbRandomizerTheme.themeData(),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
