import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const SwitchButton({Key? key, required this.isOn, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isOn,
      activeColor: const Color(0xFF174A34),
      activeTrackColor: const Color(0xFF3FC787),
      inactiveThumbColor: const Color(0xFF505050),
      inactiveTrackColor: const Color(0xFFD3D2D5),
      onChanged: onChanged,
    );
  }
}
