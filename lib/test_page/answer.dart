import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String content;
  final bool selected;
  final VoidCallback onClick;

  const Answer(
      {super.key,
      required this.content,
      required this.selected,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        height: 56,
        child: TextButton(
          onPressed: onClick,
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                  side: selected
                      ? const BorderSide(color: Colors.green)
                      : BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
            foregroundColor: const MaterialStatePropertyAll(Colors.white),
            alignment: Alignment.centerLeft,
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF1C2226)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  selected ? Icons.trip_origin : Icons.circle_outlined,
                  color: selected ? (Colors.green) : (Colors.white),
                  fill: 1.0,
                ),
              ),
              Flexible(child: Text(content)),
            ],
          ),
        ),
      ),
    );
  }
}
