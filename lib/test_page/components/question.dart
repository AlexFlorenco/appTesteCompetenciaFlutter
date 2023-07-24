import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.pergunta});
  final String pergunta;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgPrimaryColor,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 18),
      child: Text(
        pergunta,
        style: const TextStyle(fontSize: 16, height: 1.25),
      ),
    );
  }
}
