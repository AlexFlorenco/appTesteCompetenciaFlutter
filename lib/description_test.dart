import 'package:flutter/material.dart';

class DescriptionTest extends StatelessWidget {
  const DescriptionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
              child: Image.asset('assets/imgs/icon_test.png'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 10),
          child: Row(
            children: [
              Text(
                'Avaliação de Flutter',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            text:
                'Tópicos: Display Styles, Element Selectors, Functions and Rules, Page Layout, Syntax and Semantics. ',
            style: TextStyle(
              fontSize: 14,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Saiba mais',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF65A6D4),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 14),
          child: Row(
            children: [
              Text(
                '2M pessoas fizeram essa avaliação',
                style: TextStyle(color: Color(0xFF899094)),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('15 perguntas de múltipla escolha'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.schedule,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Text('1,5 minutos por pergunta'),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.assignment_turned_in_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  'Para conquistar um selo, fique entre os      top 30%',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
