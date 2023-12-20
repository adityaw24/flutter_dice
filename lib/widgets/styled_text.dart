import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    required this.title,
    super.key
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
    ),
    );
  }
}
