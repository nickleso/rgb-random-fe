// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_randomizer/main.dart';

void main() {
  testWidgets('App has correct text and initial background',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that App includes 'Hello there' text.
    print('Hello there text checker');
    expect(
      find.text('Hello there'),
      findsOneWidget,
      reason: 'No Hello there text on the page',
    );
    print('Success!');

    // Verify that App initial background is white.
    print('White bcg checker');
    final backgroundFinder = find.byKey(const Key('background'));

    final containerWidget = tester.widget<Container>(backgroundFinder);
    final boxDecoration = containerWidget.decoration! as BoxDecoration;

    expect(
      boxDecoration.color,
      const Color(0xFFFFFFFF),
      reason: 'No white color on the page',
    );
    print('Success!');
  });
}
