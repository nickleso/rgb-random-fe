import 'package:flutter/material.dart';

/// Applicaton Theme
class RgbRandomizerTheme {
  /// Theme data includes basic text and background setting
  /// and could be expaned on other elements
  static ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: Color(0xFF1C2026),
          fontSize: 18.0,
          height: 1,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
