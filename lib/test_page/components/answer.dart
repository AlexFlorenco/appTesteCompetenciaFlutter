import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

class Answer extends StatelessWidget {
  final String content;
  final bool isSelected;
  final VoidCallback onClick;

  const Answer(
      {super.key,
      required this.content,
      required this.isSelected,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: isSelected
                  ? const BorderSide(color: Colors.green)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          foregroundColor: textPrimaryColor,
          alignment: Alignment.centerLeft,
          backgroundColor: bgPrimaryColor,
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.trip_origin : Icons.circle_outlined,
              color: isSelected ? (Colors.green) : (Colors.white),
              fill: 1.0,
            ),
            const SizedBox(width: 10),
            Flexible(child: Text(content)),
          ],
        ),
      ),
    );
  }
}
