import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

import 'bottom_bar.dart';
import 'description_test.dart';
import 'instruction_test.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 52,
        forceMaterialTransparency: true,
        backgroundColor: bgPrimaryColor,
      ),
      body: ListView(
        children: const [
          DescriptionTest(),
          Divider(
            color: bgSecondaryColor,
            thickness: 8,
            height: 53,
          ),
          InstructionTest(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
