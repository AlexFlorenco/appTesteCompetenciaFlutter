import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/colors/colors.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Desenvolvido por:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 350),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: bgSecondaryColor),
              ),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/imgs/dev_perfil.jpg',
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alexandre Florenço',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                            'Mobile Developer | Flutter | SwiftUI | UX/UI Designer')
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
