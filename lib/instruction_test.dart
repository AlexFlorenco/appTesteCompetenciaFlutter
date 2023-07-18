import 'package:flutter/material.dart';

class InstructionTest extends StatelessWidget {
  const InstructionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  'Antes de começar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Você deve concluir essa avaliação em uma única sessão; verifique se tem uma boa conexão com a internet.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Se não ganhar o selo desta vez, você poderá refazer esta avaliação mais uma vez.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Não exibiremos seus resultados a ninguém sem sua autorização.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
