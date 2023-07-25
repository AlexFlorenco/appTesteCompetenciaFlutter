import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.feedback});
  final bool? feedback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        feedback!
            ? Image.asset('assets/imgs/trophy_result_dark.png')
            : Opacity(
                opacity: 0,
                child: Image.asset(
                  'assets/imgs/trophy_result_dark.png',
                )),
        feedback!
            ? const Text(
                'Muito bem! Você conquistou um selo.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            : const Text(
                'Você não conquistou um selo.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
        feedback!
            ? const Text(
                'Sua nota ficou entre as 30% mais altas das pessoas que fizeram esta avaliação.',
                style: TextStyle(
                  color: textSecondaryColor,
                ),
                textAlign: TextAlign.center,
              )
            : const Text(
                'Sua nota ficou entre as 70% mais baixas. Para conquistar um selo, fique entre as 30% mais altas.',
                style: TextStyle(
                  color: textSecondaryColor,
                ),
                textAlign: TextAlign.center,
              )
      ],
    );
  }
}
