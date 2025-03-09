import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.colour,
  });
  final String text;
  final VoidCallback? onPressed;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: colour,
      child: Text(text),
    );
  }
}
