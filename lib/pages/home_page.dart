import 'package:flutter/material.dart';
import 'package:rgb_randomizer/pages/widgets/text_container.dart';
import 'package:rgb_randomizer/utils/generate_rgb.dart';

/// Home screen which onTap renders background with random RGB color
/// and text info with greetings text and RGB color info
class HomePage extends StatefulWidget {
  /// StatefulWidget class constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _backgroundColor = generatePseudoRandomRGB();
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        decoration: BoxDecoration(
          color: _backgroundColor,
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const TextContainer(text: 'Hello there'),
              const Spacer(),
              TextContainer(
                  text:
                      'RGB ${_backgroundColor.red}, ${_backgroundColor.green}, ${_backgroundColor.blue}'),
            ],
          ),
        ),
      ),
    );
  }
}
