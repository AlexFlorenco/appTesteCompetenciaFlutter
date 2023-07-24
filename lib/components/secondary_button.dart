import 'package:flutter/material.dart';

import '../colors/colors.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1, color: textPrimaryColor),
        padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
        foregroundColor: textPrimaryColor,
      ),
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }
}
