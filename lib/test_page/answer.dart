import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String content;
  final int _selectedIndex = -1;

  const Answer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                side: _selectedIndex == -1
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
                _selectedIndex == -1
                    ? Icons.trip_origin
                    : Icons.circle_outlined,
                color: _selectedIndex == -1 ? (Colors.green) : (Colors.white),
                fill: 1.0,
              ),
            ),
            Flexible(child: Text(content)),
          ],
        ),
      ),
    );
  }
}
