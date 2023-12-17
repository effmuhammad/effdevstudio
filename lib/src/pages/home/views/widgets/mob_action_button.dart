import 'package:flutter/material.dart';

class MobActionButton extends StatelessWidget {
  const MobActionButton(
      {super.key,
      required this.text,
      this.fgColor = Colors.white,
      this.bgColor = Colors.blue,
      required this.onPressed});
  final String text;
  final Color fgColor;
  final Color bgColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 600,
          minHeight: 60,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: fgColor,
            backgroundColor: bgColor,
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
