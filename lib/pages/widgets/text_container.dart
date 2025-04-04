import 'package:flutter/material.dart';

/// Text wrapped with white container
class TextContainer extends StatelessWidget {
  /// StatelessWidget class constructor
  const TextContainer({
    required this.text,
    super.key,
  });

  /// Required argument
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Text(text),
    );
  }
}
