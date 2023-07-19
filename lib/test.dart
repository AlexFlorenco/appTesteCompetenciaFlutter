import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2226),
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
        forceMaterialTransparency: true,
        backgroundColor: const Color(0xFF1E2226),
      ),
      body: const Column(
        children: [
          Flexible(
              child: Text(
                  'Which choice would give a block element rounded corners?'))
        ],
      ),
    );
  }
}
