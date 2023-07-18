import 'package:flutter/material.dart';

void main() => runApp(const TesteCompetencia());

class TesteCompetencia extends StatelessWidget {
  const TesteCompetencia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Helvetica',
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
        )),
      ),
    );
  }
}

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

class DescriptionTest extends StatelessWidget {
  const DescriptionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
              child: Image.asset('assets/imgs/icon_test.png'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 10),
          child: Row(
            children: [
              Text(
                'Avaliação de Flutter',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            text:
                'Tópicos: Display Styles, Element Selectors, Functions and Rules, Page Layout, Syntax and Semantics. ',
            style: TextStyle(
              fontSize: 14,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Saiba mais',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF65A6D4),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 14),
          child: Row(
            children: [
              Text(
                '2M pessoas fizeram essa avaliação',
                style: TextStyle(color: Color(0xFF899094)),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.format_list_bulleted,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text('15 perguntas de múltipla escolha'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.schedule,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Text('1,5 minutos por pergunta'),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.assignment_turned_in_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  'Para conquistar um selo, fique entre os      top 30%',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InstructionTest extends StatelessWidget {
  const InstructionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  'Antes de começar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Você deve concluir essa avaliação em uma única sessão; verifique se tem uma boa conexão com a internet.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Se não ganhar o selo desta vez, você poderá refazer esta avaliação mais uma vez.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: const Text(
                  '• Não exibiremos seus resultados a ninguém sem sua autorização.',
                  style: TextStyle(height: 1.25),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

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
                onPressed: () {},
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
