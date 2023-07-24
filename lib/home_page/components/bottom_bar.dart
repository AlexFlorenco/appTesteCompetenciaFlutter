import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/test_page/test_page.dart';

import '../../colors/colors.dart';
import '../../components/primary_button.dart';
import '../../components/secondary_button.dart';
import 'modal_builder.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool accessibilityIsOn = false;

  void setAccessibilityIsOn(bool newValue) {
    setState(() {
      accessibilityIsOn = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 99,
      surfaceTintColor: bgPrimaryColor,
      padding: EdgeInsets.zero,
      color: bgPrimaryColor,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.5, color: bgSecondaryColor),
                bottom: BorderSide(width: 1.5, color: bgSecondaryColor),
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                backgroundColor: invisibleColor,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((context) {
                    return ModalBuilder(
                      accessibilityIsOn: accessibilityIsOn,
                      setAccessibilityIsOn: setAccessibilityIsOn,
                    );
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: RichText(
                        text: TextSpan(
                          text: 'Modo de acessibilidade: ',
                          children: [
                            TextSpan(
                              text:
                                  accessibilityIsOn ? 'ativado' : 'desativado',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: textSecondaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              children: [
                const Text('Idioma: Português'),
                const Spacer(),
                SizedBox(
                  height: 33,
                  child: Row(
                    children: [
                      const SecondaryButton(
                        label: 'Praticar',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PrimaryButton(
                        label: 'Iniciar',
                        enableButton: true,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestPage(
                              accessibilityIsOn: accessibilityIsOn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
