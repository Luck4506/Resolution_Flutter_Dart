//1 - importar pacotes, classes, etc
import 'package:flutter/material.dart';

//2 Toda aplicação em flutter tem um ponto de entrada, que é a função main.
//Nesse ponto de entrada, invocamos a função runApp. Que requer como paraâmnetro, 
//uma instância da classe widget
void main() {
  runApp(const MyApp());
}

/*
[Widget] <-- [StatelessWidget] <-- [MyApp]
[Widget] <-- [StatefulWidget] <-- [MyHomePage]
                                       |
                   [State] <-- [MyHomePageState]
*/


//3
/*
Na classe MyApp, definimos o método build de widget, portanto override.
Portanto, tudo é um widget.
O build controi o que? O widget.
A única coisa que o build faz é retornar uma instância de uma classe materialApp.

*/

//Programação reativa VS Programação imperativa
//Ao ínves de preparar tudo antes de usar, vamos preparando conforme o uso (reativamente.)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.cyan),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//4 - MyHomePag
//Esta classe representa a tela principal do aplicativo. Que neste caso, tem o título
//de um texto e um controlador de estados da tela.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  //Para simplificar, parece esquisito, mas toda tela flutter podemos dividir em
  //duas classes: a primeira apenas define para o flutter que a tela
  //existe (no nosso exemplo, MyHomePage). E a segunda, que controla a aparência
  //e estado de cada elemento que existe na tela (no nosso exemplo, _MyHomePageState).
}

//5
//A classe _MyHomePageState possui os conportamentos e os componentes gráficos da tela. O estado é privado, ou seja, só pode ser acessado dentro do arquivo main.dart.

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold é o layout básico de uma tela, ele tem um appBar, um body, um floatingActionButton, etc.
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
