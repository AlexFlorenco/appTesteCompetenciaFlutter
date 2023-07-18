import 'package:flutter/material.dart';

import 'bottom_bar.dart';
import 'description_test.dart';
import 'instruction_test.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2226),
      appBar: AppBar(
        toolbarHeight: 52,
        forceMaterialTransparency: true,
        backgroundColor: const Color(0xFF1E2226),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: DescriptionTest(),
              ),
              Divider(
                color: Color(0xFF373C40),
                thickness: 8,
                height: 52,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: InstructionTest(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
