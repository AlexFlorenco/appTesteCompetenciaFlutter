import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/test_page/test_page.dart';
import '../colors/colors.dart';
import '../components/primary_button.dart';
import '../components/secondary_button.dart';
import 'modal_acessibilidade.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool onAccessibility = false;

  void setAccessibility(bool newValue) {
    setState(() {
      onAccessibility = newValue;
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
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(0, 255, 255, 255),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((context) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: bgSecondaryColor),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: bgPrimaryColor),
                      height: 225,
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 6,
                            margin: const EdgeInsets.only(top: 12),
                            decoration: BoxDecoration(
                              color: textPrimaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          ModalAcessibilidade(
                            isEnabled: onAccessibility,
                            setAccessibility: setAccessibility,
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 3),
                    child: RichText(
                      text: TextSpan(
                        text: 'Modo de acessibilidade: ',
                        children: [
                          TextSpan(
                            text: onAccessibility ? 'ativado' : 'desativado',
                            style: const TextStyle(fontWeight: FontWeight.bold),
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
                              accessibilityIsOn: onAccessibility,
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
