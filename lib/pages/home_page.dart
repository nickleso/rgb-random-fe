import 'package:flutter/material.dart';
import 'package:rgb_randomizer/pages/widgets/hud_visibility_button.dart';
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
  bool isVisibleHUD = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _backgroundColor = generatePseudoRandomRGB();
      }),
      child: Container(
        key: const Key('background'),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
        decoration: BoxDecoration(
          color: _backgroundColor,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HudVisibilityButton(
                    isVisibleHUD: isVisibleHUD,
                    onPressed: () => setState(() {
                      isVisibleHUD = !isVisibleHUD;
                    }),
                  ),
                ],
              ),
              const Spacer(),
              if (isVisibleHUD) const TextContainer(text: 'Hello there'),
              const Spacer(),
              if (isVisibleHUD)
                TextContainer(
                  text: 'RGB ${_backgroundColor.red}, '
                      '${_backgroundColor.green}, '
                      '${_backgroundColor.blue}',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
