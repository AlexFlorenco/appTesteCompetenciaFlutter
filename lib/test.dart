import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Questions()],
    );
  }
}

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
            child: Text(
                'Which choice would give a block element rounded corners?'),
          ),
          Answers()
        ],
      ),
    );
  }
}

class Answers extends StatefulWidget {
  const Answers({super.key});

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 162 - 115,
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Column(
            children: [
              const ButtonAnswer(),
              Container(
                margin: const EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Dê feedback sobre esta pergunta',
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonAnswer extends StatefulWidget {
  const ButtonAnswer({super.key});

  @override
  State<ButtonAnswer> createState() => _ButtonAnswerState();
}

class _ButtonAnswerState extends State<ButtonAnswer> {
  int _selectedIndex = -1;

  List<Widget> _buildButtons() {
    List<Widget> buttons = [];
    for (int i = 0; i < 4; i++) {
      buttons.add(
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          width: MediaQuery.of(context).size.width - 32,
          height: 57,
          child: TextButton(
            onPressed: () {
              setState(() {
                _selectedIndex = i;
              });
            },
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    side: _selectedIndex == i
                        ? const BorderSide(color: Colors.green)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              alignment: Alignment.centerLeft,
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xFF1C2226)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    _selectedIndex == i
                        ? Icons.trip_origin
                        : Icons.circle_outlined,
                    color:
                        _selectedIndex == i ? (Colors.green) : (Colors.white),
                    fill: 1.0,
                  ),
                ),
                const Text('border-corner: 10px;'),
              ],
            ),
          ),
        ),
      );
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: MediaQuery.of(context).size.width - 32,
      child: Column(
        children: _buildButtons(),
      ),
    );
  }
}
