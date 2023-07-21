import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/test_page/test.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 52,
          forceMaterialTransparency: false,
          backgroundColor: const Color(0xFF1E2226),
        ),
        body: const Test());
  }
}
