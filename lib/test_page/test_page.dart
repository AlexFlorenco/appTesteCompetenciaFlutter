import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';
import 'package:teste_competencia_flutter/components/primary_button.dart';

import 'package:teste_competencia_flutter/test_page/components/answer.dart';
import 'package:teste_competencia_flutter/test_page/components/question.dart';
import 'package:teste_competencia_flutter/test_page/question_db.dart';

import 'components/countdown_timer.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.accessibilityIsOn});
  final bool? accessibilityIsOn;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool accessibilityIsOn = false;
  var currentQuestion = 0;
  int? selectedAnswer;
  var enableAdvanceButton = false;

  var questionNumber = 1;
  int correctAnswers = 0;
  final GlobalKey<CountdownTimerState> _timerKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    accessibilityIsOn = widget.accessibilityIsOn!;
  }

  @override
  Widget build(BuildContext context) {
    bool isAproved;

    void progress() {
      setState(() {
        currentQuestion++;
        selectedAnswer = null;
      });
    }

    void validateAnswer() {
      if (selectedAnswer != null &&
          questionDB[currentQuestion].cast()['answers'][selectedAnswer] ==
              questionDB[currentQuestion].cast()['correct']) {
        correctAnswers++;
      }

      if (currentQuestion == questionDB.length - 1) {
        correctAnswers > 0.7 * questionDB.length
            ? isAproved = true
            : isAproved = false;
        Navigator.pushReplacementNamed(context, '/result',
            arguments: isAproved);
      } else {
        progress();
        selectedAnswer = null;
        enableAdvanceButton = false;
        questionNumber++;
        _timerKey.currentState?.reset();
      }
    }

    return Scaffold(
      backgroundColor: textPrimaryColorDark,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: bgPrimaryColor,
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: textPrimaryColor,
              size: 28,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: const Text(
          'Avaliação de Flutter',
          style: TextStyle(
              color: textPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 44,
      ),
      body: Column(
        children: [
          Question(
            pergunta: questionDB[currentQuestion]['question'].toString(),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < questionDB[currentQuestion]['answers'].length;
                          i++) ...[
                        Answer(
                            content: questionDB[currentQuestion]
                                .cast()['answers'][i],
                            onClick: () {
                              setState(() {
                                selectedAnswer = i;
                                enableAdvanceButton = true;
                              });
                            },
                            isSelected: i == selectedAnswer),
                        const SizedBox(
                          height: 8,
                        )
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 81,
        surfaceTintColor: bgPrimaryColor,
        color: bgPrimaryColor,
        child: Row(
          children: [
            Text('P$questionNumber/15'),
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
              seconds: accessibilityIsOn ? 270 : 90,
              onFinished: validateAnswer,
            ),
            const Spacer(),
            PrimaryButton(
                label: 'Avançar',
                enableButton: enableAdvanceButton,
                onPressed: enableAdvanceButton ? validateAnswer : () {})
          ],
        ),
      ),
    );
  }
}
