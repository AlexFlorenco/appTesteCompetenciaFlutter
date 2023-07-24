import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../modal_accessibility.dart';

class ModalBuilder extends StatelessWidget {
  const ModalBuilder(
      {super.key,
      required this.accessibilityIsOn,
      required this.setAccessibilityIsOn});
  final bool accessibilityIsOn;
  final ValueChanged<bool> setAccessibilityIsOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: bgSecondaryColor),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: bgPrimaryColor),
      height: 225,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 6,
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: textPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          ModalAccessibility(
            accessibilityIsOn: accessibilityIsOn,
            setAccessibilityIsOn: setAccessibilityIsOn,
          ),
        ],
      ),
    );
  }
}
