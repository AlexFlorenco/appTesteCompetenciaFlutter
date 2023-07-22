import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAproved = ModalRoute.of(context)!.settings.arguments as bool?;
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
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 44,
        forceMaterialTransparency: false,
        backgroundColor: const Color(0xFF1E2226),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResultWidget(
            feedback: isAproved,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: const Color(0xFF1E2226),
        color: const Color(0xFF1E2226),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: TextButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff72B4F7))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Concluído',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF1D3C5C)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.feedback});
  final bool? feedback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          feedback!
              ? Image.asset('assets/imgs/trophy_result_dark.png')
              : Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'assets/imgs/trophy_result_dark.png',
                  )),
          feedback!
              ? const Text(
                  'Muito bem! Você conquistou um selo.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              : const Text(
                  'Você não conquistou um selo.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
          feedback!
              ? const SizedBox(
                  width: 240,
                  child: Text(
                    'Sua nota ficou entre as 30% mais altas das pessoas que fizeram esta avaliação.',
                    style: TextStyle(
                      color: Color(0xFF899094),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              : const SizedBox(
                  width: 240,
                  child: Text(
                    'Sua nota ficou entre as 70% mais baixas. Para conquistar um selo, fique entre as 30% mais altas',
                    style: TextStyle(
                      color: Color(0xFF899094),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
        ],
      ),
    );
  }
}
