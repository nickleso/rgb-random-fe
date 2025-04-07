import 'package:flutter/material.dart';

/// Text wrapped with white container
class HudVisibilityButton extends StatelessWidget {
  /// StatelessWidget class constructor
  const HudVisibilityButton({
    required this.isVisibleHUD,
    required this.onPressed,
    super.key,
  });

  /// Required argument - HUD visibility boolean
  final bool isVisibleHUD;

  /// Required callback argument - tooless HUD visibility boolean state
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          const Color(0xFFFFFFFF),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      icon: isVisibleHUD
          ? const Icon(
              Icons.visibility,
              size: 24,
              color: Color(0xFF1C2026),
            )
          : const Icon(
              Icons.visibility_off,
              size: 24,
              color: Color(0xFF1C2026),
            ),
      onPressed: onPressed,
    );
  }
}
