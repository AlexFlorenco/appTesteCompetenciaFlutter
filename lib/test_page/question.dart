import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.pergunta});
  final String pergunta;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E2226),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Text(
        pergunta,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
