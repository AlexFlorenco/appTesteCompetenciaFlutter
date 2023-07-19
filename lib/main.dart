import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/test.dart';

import 'home_page.dart';

void main() => runApp(const TesteCompetencia());

class TesteCompetencia extends StatelessWidget {
  const TesteCompetencia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/test': (context) => const Test()
      },
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Helvetica',
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
        )),
      ),
    );
  }
}
