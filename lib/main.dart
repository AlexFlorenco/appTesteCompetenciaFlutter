import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(const TesteCompetencia());

class TesteCompetencia extends StatelessWidget {
  const TesteCompetencia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
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
