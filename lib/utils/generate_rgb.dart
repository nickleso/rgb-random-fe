import 'dart:math';
import 'package:flutter/material.dart';

/// Pseudo random RGB color generator - returns C
Color generatePseudoRandomRGB() {
  final int red = Random().nextInt(256);
  final int green = Random().nextInt(256);
  final int blue = Random().nextInt(256);

  return Color.fromRGBO(red, green, blue, 1);
}
