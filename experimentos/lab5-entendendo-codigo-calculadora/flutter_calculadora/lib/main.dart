import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

enum KeyType { digit, operator, action }

enum CalcAction { clear, backspace, enter }

class Key {
  final String label;
  final KeyType type;
  final String? value;
  final CalcAction? action;

  const Key({
    required this.label,
    required this.type,
    this.value,
    this.action,
  });
}

class Display {
  String _text;

  Display({String initialText = ''}) : _text = initialText;

  String get text => _text;

  void setText(String value) => _text = value;

  void clear() => _text = '';

  void append(String value) => _text += value;

  void backspace() {
    if (_text.isEmpty) return;
    _text = _text.substring(0, _text.length - 1);
  }
}

class CalculatorEngine {
  String _normalize(String s) {
    return s.replaceAll('×', 'x').replaceAll('X', 'x').trim();
  }

  double evaluate(String expression) {
    final exp = _normalize(expression);

    final regex = RegExp(
      r'^\s*([+-]?\d+(?:\.\d+)?)\s*([+\-*/x])\s*([+-]?\d+(?:\.\d+)?)\s*$',
    );

    final match = regex.firstMatch(exp);
    if (match == null) {
      throw const FormatException('Expressão inválida');
    }

    final a = double.parse(match.group(1)!);
    final op = match.group(2)!;
    final b = double.parse(match.group(3)!);

    return _apply(a, op, b);
  }

  double _apply(double a, String op, double b) {
    switch (op) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '*':
      case 'x':
        return a * b;
      case '/':
        if (b == 0) throw UnsupportedError('Divisão por zero');
        return a / b;
      default:
        throw UnsupportedError('Operador não suportado: $op');
    }
  }
}

class CalculatorController {
  final Display display;
  final CalculatorEngine engine;

  CalculatorController({Display? display, CalculatorEngine? engine})
    : display = display ?? Display(),
      engine = engine ?? CalculatorEngine();

  void press(Key key) {
    switch (key.type) {
      case KeyType.digit:
      case KeyType.operator:
        display.append(key.value ?? key.label);
        break;
      case KeyType.action:
        _handleAction(key.action);
        break;
    }
  }

  void _handleAction(CalcAction? action) {
    if (action == null) return;

    switch (action) {
      case CalcAction.clear:
        display.clear();
        break;
      case CalcAction.backspace:
        display.backspace();
        break;
      case CalcAction.enter:
        _compute();
        break;
    }
  }

  void _compute() {
    final input = display.text.trim();
    if (input.isEmpty) return;

    try {
      final result = engine.evaluate(input);
      final intCandidate = result.toInt();
      final formatted = (result == intCandidate) ? '$intCandidate' : '$result';
      display.setText(formatted);
    } catch (_) {
      display.setText('Erro');
    }
  }
}

//Até aqui é igual ao arquivo `calculadora_resolution.dart`. O restante é a parte de interface gráfica usando Flutter, que conecta os botões e o display com o controlador e a lógica de cálculo.

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final CalculatorController controller = CalculatorController();

  final List<List<Key>> keyRows = const [
    [
      Key(label: 'C', type: KeyType.action, action: CalcAction.clear),
      Key(label: '⌫', type: KeyType.action, action: CalcAction.backspace),
      Key(label: '÷', type: KeyType.operator, value: '/'),
      Key(label: '×', type: KeyType.operator, value: 'x'),
    ],
    [
      Key(label: '7', type: KeyType.digit),
      Key(label: '8', type: KeyType.digit),
      Key(label: '9', type: KeyType.digit),
      Key(label: '-', type: KeyType.operator),
    ],
    [
      Key(label: '4', type: KeyType.digit),
      Key(label: '5', type: KeyType.digit),
      Key(label: '6', type: KeyType.digit),
      Key(label: '+', type: KeyType.operator),
    ],
    [
      Key(label: '1', type: KeyType.digit),
      Key(label: '2', type: KeyType.digit),
      Key(label: '3', type: KeyType.digit),
      Key(label: '=', type: KeyType.action, action: CalcAction.enter),
    ],
    [
      Key(label: '0', type: KeyType.digit),
      Key(label: '.', type: KeyType.digit),
    ],
  ];

  void _onKeyPressed(Key key) {
    setState(() {
      controller.press(key);
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = controller.display.text;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora Flutter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      text.isEmpty ? '0' : text,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    for (var row in keyRows)
                      Expanded(
                        child: Row(
                          children: [
                            for (var key in row)
                              Expanded(
                                flex: key.label == '0' ? 2 : 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ElevatedButton(
                                    onPressed: () => _onKeyPressed(key),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Text(
                                      key.label,
                                      style: const TextStyle(fontSize: 24),
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
        ),
      ),
    );
  }
}

class _CalculatorButton extends StatefulWidget {
  final Key keyData;
  final VoidCallback onTap;
  //VoidCallback é um tipo de função que não recebe parâmetros e não retorna nada. É comumente usado para callbacks de eventos, como o clique de um botão.

  const _CalculatorButton({required this.keyData, required this.onTap});

  @override
  State<_CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<_CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    Color background;
    Color foreground;

    switch (widget.keyData.type) {
      case KeyType.digit:
        background = scheme.surfaceContainerLow;
        foreground = scheme.onSurface;
        break;
      case KeyType.operator:
        background = scheme.primaryContainer;
        foreground = scheme.onPrimaryContainer;
        break;
      case KeyType.action:
        background = widget.keyData.action == CalcAction.enter
            ? scheme.primary
            : scheme.secondaryContainer;
        foreground = widget.keyData.action == CalcAction.enter
            ? scheme.onPrimary
            : scheme.onSecondaryContainer;
        break;
    }

    return ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: background,
        foregroundColor: foreground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      child: Text(widget.keyData.label),
    );
  }
}
