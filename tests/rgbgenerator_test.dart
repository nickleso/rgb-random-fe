// This is a unit test for RGB pseudo random generator testing

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_randomizer/core/utils/generate_rgb.dart';

void main() {
  test('RGB random generator returns partial colors in range 0-255', () async {
    // Verify that recieved colors are RGB.
    print('RGB generator - each color 200 times checker');
    for (int i = 0; i < 200; i += 1) {
      final Color color = generatePseudoRandomRGB();

      final red = color.red;
      final green = color.green;
      final blue = color.blue;

      print('RGB $red, $green, $blue');

      expect(red, inInclusiveRange(0, 255), reason: 'Red out of range');
      expect(green, inInclusiveRange(0, 255), reason: 'Green out of range');
      expect(blue, inInclusiveRange(0, 255), reason: 'Blue out of range');
    }

    print('Success! All partial colors in RGB in range 0-255');
  });
}
