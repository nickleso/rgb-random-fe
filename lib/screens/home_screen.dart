import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  void generateBcgColor() => {
        setState(() {
          print('on tap');

          int red = 200;
          int green = 100;
          int blue = 74;

          red = Random().nextInt(256);
          green = Random().nextInt(256);
          blue = Random().nextInt(256);

          print('**color: $red, $green, $blue');

          _backgroundColor = Color.fromRGBO(red, green, blue, 1);
        })
      };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateBcgColor(),
      child: Container(
        decoration: BoxDecoration(
          color: _backgroundColor,
        ),
        child: const Center(
          child: Text('Hello there!'),
        ),
      ),
    );
  }
}
