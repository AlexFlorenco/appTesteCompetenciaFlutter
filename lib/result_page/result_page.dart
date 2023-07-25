import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';
import 'package:teste_competencia_flutter/components/primary_button.dart';
import 'package:teste_competencia_flutter/result_page/components/credits.dart';
import 'package:teste_competencia_flutter/result_page/components/result_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAproved = ModalRoute.of(context)!.settings.arguments as bool?;

    return Scaffold(
      backgroundColor: bgPrimaryColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: bgPrimaryColor,
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: textPrimaryColor,
              size: 28,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: const Text(
          'Avaliação de Flutter',
          style: TextStyle(
              color: textPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 44,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            IntrinsicHeight(
              child: SizedBox(
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResultWidget(
                      feedback: isAproved,
                    ),
                    const Divider(
                      color: bgSecondaryColor,
                      thickness: 8,
                      height: 53,
                    ),
                    const Credits(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 65,
        surfaceTintColor: bgPrimaryColor,
        color: bgPrimaryColor,
        child: PrimaryButton(
          enableButton: true,
          label: 'Concluído',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
