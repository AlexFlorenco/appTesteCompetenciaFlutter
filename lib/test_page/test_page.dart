import 'package:flutter/material.dart';

import 'package:teste_competencia_flutter/test_page/answer.dart';
import 'package:teste_competencia_flutter/test_page/question.dart';
import 'package:teste_competencia_flutter/test_page/test_questions.dart';

import 'countdown_timer.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var selectedQuestion = 0;
  int? selectedButton;
  var nextQuestion = false;
  var numberQuestion = 1;
  int? userResponse;
  int correctAnswers = 0;
  final GlobalKey<CountdownTimerState> _timerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    void avancar() {
      setState(() {
        selectedQuestion++;
        selectedButton = null;
      });
    }

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
                                nextQuestion = true;
                              });
                              userResponse = i;
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
                Text('P$numberQuestion/15'),
                const SizedBox(
                  height: 24,
                  child: VerticalDivider(
                    color: Color(0xFF303539),
                    thickness: 1.5,
                    width: 20,
                  ),
                ),
                CountdownTimer(
                    key: _timerKey,
                    seconds: 5,
                    onFinished: () {
                      if (selectedQuestion < 14) {
                        if (userResponse != null) {
                          if (teste[selectedQuestion].cast()['answers']
                                  [userResponse] ==
                              teste[selectedQuestion].cast()['correct']) {
                            correctAnswers++;
                            print('Acertou');
                          } else {
                            print('Errou');
                          }
                        } else {
                          print('Não respondeu');
                        }
                        print('Respostas corretas: $correctAnswers');
                        avancar();
                        userResponse = null;
                        nextQuestion = false;
                        numberQuestion++;
                        _timerKey.currentState?.reset();
                      } else if (selectedQuestion == 14) {
                        if (correctAnswers > 10) {
                          Navigator.pushReplacementNamed(context, '/result',
                              arguments: true);
                        } else {
                          Navigator.pushReplacementNamed(context, '/result',
                              arguments: false);
                        }
                      }
                    }),
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: nextQuestion
                        ? const MaterialStatePropertyAll(Color(0xff72B4F7))
                        : const MaterialStatePropertyAll(Color(0xFF393C40)),
                  ),
                  onPressed: nextQuestion
                      ? () {
                          if (selectedQuestion < 14) {
                            if (teste[selectedQuestion].cast()['answers']
                                    [userResponse] ==
                                teste[selectedQuestion].cast()['correct']) {
                              correctAnswers++;
                              print('Acertou');
                            } else {
                              print('Errou');
                            }

                            print('Respostas corretas: $correctAnswers');
                            avancar();
                            userResponse = null;
                            nextQuestion = false;
                            numberQuestion++;
                            _timerKey.currentState?.reset();
                          } else if (selectedQuestion == 14) {
                            if (correctAnswers > 10) {
                              Navigator.pushReplacementNamed(context, '/result',
                                  arguments: true);
                            } else {
                              Navigator.pushReplacementNamed(context, '/result',
                                  arguments: false);
                            }
                          }
                        }
                      : null,
                  child: Text(
                    'Avançar',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: nextQuestion
                            ? const Color(0xFF1D3C5C)
                            : const Color(0xFF75797E)),
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
