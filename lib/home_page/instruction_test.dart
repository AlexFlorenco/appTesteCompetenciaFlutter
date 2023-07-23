import 'package:flutter/material.dart';

class InstructionTest extends StatelessWidget {
  const InstructionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              'Antes de começar',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              '• Você deve concluir essa avaliação em uma única sessão; verifique se tem uma boa conexão com a internet.',
              style: TextStyle(height: 1.24),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              '• Se não ganhar o selo desta vez, você poderá refazer esta avaliação mais uma vez.',
              style: TextStyle(height: 1.24),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  '• Não exibiremos seus resultados a ninguém sem sua autorização.',
                  style: TextStyle(height: 1.24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
