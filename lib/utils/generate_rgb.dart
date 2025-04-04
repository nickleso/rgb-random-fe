import 'dart:math';
import 'package:flutter/material.dart';

/// Pseudo random RGB color generator
Color generatePseudoRandomRGB() {
  print('on tap');

  final int red = Random().nextInt(256);
  final int green = Random().nextInt(256);
  final int blue = Random().nextInt(256);

  print('**color: $red, $green, $blue');

  return Color.fromRGBO(red, green, blue, 1);
}
