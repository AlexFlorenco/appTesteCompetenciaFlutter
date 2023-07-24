import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

class DescriptionTest extends StatelessWidget {
  const DescriptionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/imgs/icon_test.png',
            height: 65,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 11),
            child: Text(
              'Avaliação de Flutter',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          RichText(
            text: const TextSpan(
              text:
                  'Tópicos: Widgets, Estilos, Layout de Página, Roteamento, Gerência de Estado, Dependências, Sintaxe e Semântica. ',
              children: <TextSpan>[
                TextSpan(
                  text: 'Saiba mais',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6, bottom: 16),
            child: Text(
              '2M pessoas fizeram essa avaliação',
              style: TextStyle(color: textSecondaryColor),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.format_list_bulleted,
                        color: textPrimaryColor,
                        size: 30,
                      ),
                    ),
                    Text('15 perguntas de múltipla escolha'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Icons.schedule,
                        color: textPrimaryColor,
                        size: 28,
                      ),
                    ),
                    Text('1,5 minutos por pergunta'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.assignment_turned_in_outlined,
                      color: textPrimaryColor,
                      size: 28,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Para conquistar um selo, fique entre os top 30%',
                      style: TextStyle(height: 1.25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
