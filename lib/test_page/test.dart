import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/test_page/answer.dart';
import 'package:teste_competencia_flutter/test_page/question.dart';

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var perguntaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    final teste = [
      {
        'pergunta': 'O que é o Flutter?',
        'respostas': [
          'Uma linguagem de programação criada pela Google',
          'Uma ferramenta de desenvolvimento multiplataforma para dispositivos móveis',
          'Uma biblioteca de códigos pré-prontos para facilitar o projeto',
          'Uma plataforma de hospedagem de aplicativos na nuvem'
        ],
      },
      {
        'pergunta': 'Qual linguagem o Flutter utiliza?',
        'respostas': ['Java', '.net', 'Dart', 'Javacript'],
      },
      {
        'pergunta': 'Quais são as principais vantagens do Flutter?',
        'respostas': [
          'Versatilidade, menor curva de aprendizado e agilidade',
          'Performance nativa, design personalizado e hot reload',
          'Ambas as opções anteriores',
          'Nenhuma das opções anteriores'
        ],
      },
      {
        'pergunta': 'Quais plataformas o Flutter suporta?',
        'respostas': [
          'Android e iOS',
          'Android, iOS e web',
          'Android, iOS, web e desktop',
          'Android, iOS, web, desktop e dispositivos embarcados'
        ],
      },
    ];
    List<String> respostas = teste[perguntaSelecionada].cast()['respostas'];

    return Column(
      children: [
        Question(
          pergunta: teste[perguntaSelecionada]['pergunta'].toString(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          child: IntrinsicHeight(
            child: Column(
              children: [
                ...respostas.map((t) => Answer(content: t)).toList(),
                TextButton(
                    onPressed: () {
                      setState(() {
                        perguntaSelecionada++;
                      });
                    },
                    child: const Text('Próxima pergunta'))
              ],
            ),
          ),
        )
      ],
    );
  }
}
