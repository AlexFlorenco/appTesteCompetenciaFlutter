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
              const ButtonAnswer(),
              const ButtonAnswer(),
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

class ButtonAnswer extends StatelessWidget {
  const ButtonAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: MediaQuery.of(context).size.width - 32,
      height: 57,
      child: TextButton.icon(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          foregroundColor: const MaterialStatePropertyAll(Colors.white),
          alignment: Alignment.centerLeft,
          backgroundColor: const MaterialStatePropertyAll(Color(0xFF1C2226)),
        ),
        onPressed: () {},
        icon: const Icon(Icons.circle),
        label: const Text('border-corner: 10px;'),
      ),
    );
  }
}
