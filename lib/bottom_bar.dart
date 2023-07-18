import 'package:flutter/material.dart';
import 'package:teste_competencia_flutter/modal_acessibilidade.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 101,
      surfaceTintColor: const Color(0xFF1E2226),
      padding: EdgeInsets.zero,
      color: const Color(0xFF1E2226),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 2.0, color: Color(0xFF2B3135)),
                bottom: BorderSide(width: 2.0, color: Color(0xFF2B3135)),
              ),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                  alignment: Alignment.centerLeft,
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
                            border: Border.all(
                                width: 1, color: const Color(0xFF35393E)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: const Color(0xFF1C2226)),
                        height: 225,
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 6,
                              margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                              decoration: BoxDecoration(
                                color: Colors.white, // Altere a cor aqui
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const ModalAcessibilidade(),
                          ],
                        ),
                      );
                    }),
                  );
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Modo de acessibilidade: ',
                          children: [
                            TextSpan(
                              text: 'desativado',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFBEC3C8),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('Idioma: Inglês'),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 35,
                    child: OutlinedButton(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.fromLTRB(15, 0, 15, 0)),
                          foregroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 255, 255))),
                      onPressed: () {},
                      child: const Text(
                        'Praticar',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 16),
                      child: TextButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff72B4F7))),
                        onPressed: () {},
                        child: const Text(
                          'Iniciar',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
