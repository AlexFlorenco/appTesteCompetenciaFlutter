import 'package:flutter/material.dart';

import '../colors/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.enableButton});
  final VoidCallback onPressed;
  final String label;
  final bool enableButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            enableButton ? buttonBgPrimaryEnabled : buttonBgPrimaryDisabled,
        foregroundColor:
            enableButton ? buttonFgPrimaryEnabled : buttonFgPrimaryDisabled,
        splashFactory:
            enableButton ? InkSplash.splashFactory : NoSplash.splashFactory,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}


// () => Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => TestPage(
//         accessibilityIsOn: onAccessibility,
//       ),
//     ),
//   ),