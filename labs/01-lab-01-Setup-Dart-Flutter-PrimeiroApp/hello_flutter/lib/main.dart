import 'package:flutter/material.dart';

// Todo programa em Dart começa por `main()`.
void main() {
  runApp(const MyApp());
}

// 2) WIDGET RAIZ (Root Widget)
// Um Widget é como uma “peça de LEGO” da interface.

// No Flutter, a tela é construída como uma árvore de widgets (Widget Tree).
//Tudo que é interativo é chamado de Widget, mas existem muitos tipos diferentes:

// - `StatelessWidget`: não tem estado interno mutável (ex.: texto, ícones, etc.) EXEMPLO:  

// - `StatefulWidget`: tem estado interno mutável (ex.: contador, formulário, etc.) EXEMPLO:

// - `InheritedWidget`: compartilha dados com seus filhos (ex.: tema, localização, etc.) EXEMPLO:

// - `Provider`: gerencia estado e dependências (ex.: bloc, riverpod, etc.)
//EXEMPLO:

// Ou seja: ele não muda “por dentro” sozinho; só muda se receber novos dados.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Wigget raíz da aplicação. Ele é o ponto de partida para construir a interface.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Hello Flutter (Didático)',

      // 2.1) TEMA
      // O tema define cores, fontes e estilos padrão.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 30, 0, 255),
        ),
        useMaterial3: true,
      ),

      // 2.2) TELA INICIAL
      // `home` é a primeira tela exibida.
      home: const MyHomePage(title: 'Contador (TESTE)'),
    );
  }
}


// 3) UMA TELA COM ESTADO (StatefulWidget)
// Quando você precisa que a interface reaja a mudanças (cliques, texto digitado,
// dados vindos de rede, etc.), você geralmente usa um `StatefulWidget`.
// Um `StatefulWidget` tem:
// - a “casca” (Widget): `MyHomePage`
// - o “estado” (State): `_MyHomePageState`
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // `final` = não muda depois de criado.
  // Esse `title` vem do pai (MyApp) e é usado para montar a UI.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 4) CLASSE DE ESTADO (State)
// Aqui ficam:
// - variáveis que podem mudar (ex.: contador)
// - funções que alteram essas variáveis
// - o método `build`, que desenha a tela baseada no estado atual
class _MyHomePageState extends State<MyHomePage> {
  // Convenção: variáveis começando com `_` são privadas para este arquivo.
  int _counter = 0;

  // 4.1) ALTERANDO ESTADO COM setState
  // -------------------------------------------------------------------------
  // `setState` avisa o Flutter:
  // “Ei, algo mudou! Reconstrua (rebuild) a interface dessa tela.”
  //
  // Sem `setState`, a variável mudaria, mas a tela não atualizaria.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    if (_counter != 0) {
      setState(() {
        _counter = 0;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('O contador já está zerado!')),
      );
    }
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    } 
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('O contador não pode ser negativo!')),
      );
    }
  }

  // 5) BUILD (desenho da tela)
  // -------------------------------------------------------------------------
  // `build` pode ser chamado várias vezes. Isso é normal.
  // Ele deve ser rápido e “descrever” a UI para o Flutter.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold é uma estrutura padrão: AppBar + Body + FAB, etc.
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        // `widget` aqui é a instância do MyHomePage.
        // `widget.title` é o título que veio do construtor.
      ),

      // BODY
      // ---------------------------------------------------------------------
      // Center centraliza o conteúdo.
      body: Center(
        child: Column(
          // Column empilha widgets na vertical.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Seu contador atual é:'),

            // Exibe o valor do contador.
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 16),
            const Text(
              'Mude seu contador usando os botões abaixo!',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

      // FloatingActionButton (FAB)
      // ---------------------------------------------------------------------
      // Observação: o Scaffold aceita APENAS um `floatingActionButton`.
      // Para ter mais de um, a gente coloca um layout (como Row) como filho.
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),

          const SizedBox(width: 16),

          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrementar',
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 16),

          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Resetar',
            child: const Icon(Icons.restart_alt),
          ),

          const SizedBox(width: 16),

          FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Botão de ajuda clicado!')),
              );
            },
            tooltip: 'Ajuda',
            child: const Icon(Icons.help_outline),
          ),

        ],
      ),
    );
  }
}


