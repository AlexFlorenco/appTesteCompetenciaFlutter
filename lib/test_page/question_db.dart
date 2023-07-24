final List<Map<String, dynamic>> questionDB = [
  //1
  {
    'question': 'Qual é a diferença entre StatelessWidget e StatefulWidget?',
    'answers': [
      'StatelessWidget é usado para criar widgets estáticos, enquanto StatefulWidget é usado para criar widgets dinâmicos',
      'StatelessWidget é usado para criar widgets dinâmicos, enquanto StatefulWidget é usado para criar widgets estáticos',
      'StatelessWidget é usado para criar widgets que não podem ser alterados, enquanto StatefulWidget é usado para criar widgets que podem ser alterados',
      'StatelessWidget e StatefulWidget são a mesma coisa',
    ],
    'correct':
        'StatelessWidget é usado para criar widgets estáticos, enquanto StatefulWidget é usado para criar widgets dinâmicos',
  },

  //2
  {
    'question':
        'Qual é o comando para executar um aplicativo Flutter em um dispositivo ou emulador?',
    'answers': [
      'flutter run',
      'flutter start',
      'flutter launch',
      'flutter execute'
    ],
    'correct': 'flutter run',
  },

  //3
  {
    'question':
        'Como você pode adicionar dependências externas ao seu projeto Flutter?',
    'answers': [
      'Adicionando o nome da dependência ao arquivo build.gradle',
      'Adicionando o nome da dependência ao arquivo pubspec.yaml',
      'Adicionando o nome da dependência ao arquivo AndroidManifest.xml',
      'Adicionando o nome da dependência ao arquivo Info.plist'
    ],
    'correct': 'Adicionando o nome da dependência ao arquivo pubspec.yaml',
  },

  //4
  {
    'question':
        'Como você pode atualizar os widgets na tela em tempo real durante o desenvolvimento?',
    'answers': [
      'Usando o comando flutter refresh',
      'Usando o comando flutter reload',
      'Usando o recurso Hot Reload',
      'Reiniciando o aplicativo'
    ],
    'correct': 'Usando o recurso Hot Reload',
  },

  //5
  {
    'question':
        'Qual é o widget usado para criar uma lista rolável no Flutter?',
    'answers': ['ListView', 'ScrollView', 'RecyclerView', 'TableView'],
    'correct': 'ListView',
  },

  //6
  {
    'question': 'Como você pode adicionar ícones ao seu aplicativo Flutter?',
    'answers': [
      'Usando a classe Icon do Material Design',
      'Usando imagens PNG como ícones',
      'Usando fontes de ícones personalizadas',
      'Todas as opções acima'
    ],
    'correct': 'Todas as opções acima',
  },

  //7
  {
    'question': 'Qual é o widget básico para criar layouts no Flutter?',
    'answers': ['Scaffold', 'Container', 'Column', 'MaterialApp'],
    'correct': 'Scaffold',
  },

  //8
  {
    'question':
        'Como você pode acessar o contexto de um widget em seu método build?',
    'answers': [
      'Usando a propriedade context do widget',
      'Usando a propriedade context do BuildContext',
      'Usando o método context do widget',
      'Não é possível acessar o contexto de um widget em seu método build',
    ],
    'correct': 'Usando a propriedade context do widget',
  },

  //9
  {
    'question': 'Como você pode passar dados entre widgets no Flutter?',
    'answers': [
      'Usando o construtor do widget filho',
      'Usando o método setState do widget pai',
      'Usando o método build do widget filho',
      'Todas as opções acima',
    ],
    'correct': 'Usando o construtor do widget filho',
  },

  //10
  {
    'question': 'Como você pode atualizar o estado de um StatefulWidget?',
    'answers': [
      'Chamando o método setState',
      'Chamando o método build',
      'Chamando o método createState',
      'Não é possível atualizar o estado de um StatefulWidget',
    ],
    'correct': 'Chamando o método setState',
  },

  //11
  {
    'question':
        'Qual é a diferença entre mainAxisSize e mainAxisAlignment em um widget Row ou Column?',
    'answers': [
      'mainAxisSize define o tamanho principal do eixo, enquanto mainAxisAlignment define o alinhamento dos filhos ao longo do eixo principal',
      'mainAxisSize define o alinhamento dos filhos ao longo do eixo principal, enquanto mainAxisAlignment define o tamanho principal do eixo',
      'mainAxisSize e mainAxisAlignment são a mesma coisa',
      'mainAxisSize e mainAxisAlignment não têm relação entre si',
    ],
    'correct':
        'mainAxisSize define o tamanho principal do eixo, enquanto mainAxisAlignment define o alinhamento dos filhos ao longo do eixo principal',
  },

  //12
  {
    'question':
        'Como você pode adicionar espaçamento entre os filhos de um widget Row ou Column?',
    'answers': [
      'Usando a propriedade padding do widget Row ou Column',
      'Usando a propriedade margin do widget Row ou Column',
      'Usando o widget SizedBox entre os filhos',
      'Todas as opções acima',
    ],
    'correct': 'Usando o widget SizedBox entre os filhos',
  },

  //13
  {
    'question': 'Como você pode adicionar bordas a um widget no Flutter?',
    'answers': [
      'Usando a propriedade border do widget Container',
      'Usando a classe BoxDecoration com a propriedade decoration do widget Container',
      'Usando a classe Border com a propriedade decoration do widget Container',
      'Todas as opções acima',
    ],
    'correct':
        'Usando a classe BoxDecoration com a propriedade decoration do widget Container',
  },

  //14
  {
    'question': 'Como você pode criar uma rota nomeada no Flutter?',
    'answers': [
      'Definindo a propriedade routes do widget MaterialApp ou CupertinoApp',
      'Usando o método Navigator.pushNamed',
      'Usando o método Navigator.push',
      'Todas as opções acima',
    ],
    'correct':
        'Definindo a propriedade routes do widget MaterialApp ou CupertinoApp',
  },

  //15
  {
    'question': 'Como você pode passar argumentos para uma rota nomeada?',
    'answers': [
      'Usando o parâmetro arguments do método Navigator.pushNamed',
      'Usando o parâmetro arguments do construtor da classe MaterialPageRoute',
      'Usando o parâmetro arguments do método Navigator.push',
      'Todas as opções acima',
    ],
    'correct': 'Usando o parâmetro arguments do método Navigator.pushNamed',
  },
];
