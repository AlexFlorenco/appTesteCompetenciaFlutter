import 'package:flutter/material.dart';

import 'package:teste_competencia_flutter/test_page/answer.dart';
import 'package:teste_competencia_flutter/test_page/question.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var selectedQuestion = 0;
  int? selectedButton;
  @override
  Widget build(BuildContext context) {
    void avancar() {
      setState(() {
        selectedQuestion++;
        selectedButton = null;
      });
    }

    final teste = [
      {
        'question': 'O que é o Flutter?',
        'answers': [
          'Uma linguagem de programação criada pela Google',
          'Uma ferramenta de desenvolvimento multiplataforma para dispositivos móveis',
          'Uma biblioteca de códigos pré-prontos para facilitar o projeto',
          'Uma plataforma de hospedagem de aplicativos na nuvem'
        ],
      },
      {
        'question': 'Qual linguagem o Flutter utiliza?',
        'answers': ['Java', '.net', 'Dart', 'Javacript'],
      },
      {
        'question': 'Quais são as principais vantagens do Flutter?',
        'answers': [
          'Versatilidade, menor curva de aprendizado e agilidade',
          'Performance nativa, design personalizado e hot reload',
          'Ambas as opções anteriores',
          'Nenhuma das opções anteriores'
        ],
      },
      {
        'question': 'Quais plataformas o Flutter suporta?',
        'answers': [
          'Android e iOS',
          'Android, iOS e web',
          'Android, iOS, web e desktop',
          'Android, iOS, web, desktop e dispositivos embarcados'
        ],
      },
    ];
    List<String> answersString = teste[selectedQuestion].cast()['answers'];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: const Text(
          'Avaliação de Flutter',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 44,
        forceMaterialTransparency: false,
        backgroundColor: const Color(0xFF1E2226),
      ),
      body: Column(
        children: [
          Question(
            pergunta: teste[selectedQuestion]['question'].toString(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      for (int i = 0; i < 4; i++)
                        Answer(
                            content: answersString[i],
                            onClick: () {
                              setState(() {
                                selectedButton = i;
                              });
                            },
                            selected: i == selectedButton),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 81,
        surfaceTintColor: const Color(0xFF1E2226),
        color: const Color(0xFF1E2226),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text('P1/15'),
                const SizedBox(
                  height: 24,
                  child: VerticalDivider(
                    color: Color(0xFF303539),
                    thickness: 1.5,
                    width: 20,
                  ),
                ),
                const Text('01:24 restantes'),
                const Spacer(),
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff72B4F7))),
                  onPressed: avancar,
                  child: const Text(
                    'Avançar',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
