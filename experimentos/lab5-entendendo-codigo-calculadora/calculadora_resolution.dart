// Este enum define um conjunto limitado de tipos de tecla.
// Ou seja, uma tecla só pode ser um dígito, um operador ou uma ação.

enum KeyType { digit, operator, action }

// No enum KeyType eu defino o tipo de tecla; neste enum, defino o que cada tecla de ação faz.
enum CalcAction { clear, backspace, enter }

class Key {
  final String label;
  final KeyType type;

  // `label` é o que aparece na tecla para o usuário,
  // e `value` é o valor que a calculadora usa internamente.
  // Eles podem ser diferentes, como em "×" na interface e "x" na lógica.

  final String? value;

  // O atributo `action` deve ser opcional, pois só faz sentido existir quando o `keyType` for `action`.
  final CalcAction? action;

  // Aqui é usado um construtor `const`.
  // Ele permite criar objetos imutáveis cujos valores já podem ser determinados
  // em tempo de compilação.
  // Isso pode reduzir a criação de objetos em tempo de execução e melhorar o uso de memória.
  //Só é possível se no ato da compilação o Dart conseguir determinar os valores de todos os campos do objeto.

  const Key({
    required this.label,
    required this.type,
    //Required é necessário para os campos que não são opcionais, ou seja, que não têm um valor padrão ou que não são nulos.
    this.value,
    this.action,
    //Os demais campos são opcionais, pois podem não ser necessários para todos os tipos de tecla.
  });
}

class Display {
  String _text;

  // O atributo `_text` é privado, ou seja, só pode ser acessado
  // dentro da própria biblioteca/arquivo em que foi declarado.

  Display({String initialText = ""}) : _text = initialText;
  // O construtor `Display` tem um parâmetro opcional `initialText` com um valor padrão de string vazia.
  //Ou seja, se na instanciação eu colocar valor do atributo, o valor inicial será o que eu coloquei como parâmetro. Se eu não colocar um parâmetro, vai ser o inicial, que é "".

  String get text => _text;
  // O método `text` é um getter, ou seja, uma forma de acessar o valor do atributo privado `_text` de fora da classe.
  //No momento, isso não é muito útil, pois a função main está no mesmo arquivo, porém, se o main estivesse em um arquivo separado da classe Display, só poderia ser acessado por meio deste getter. Além disso, o getter faz que, na hora de chamar esse atributo, eu posso usar text ao invés de _text .

  void setText(String value) => _text = value;
  // O método `setText` é um setter, ou seja, uma forma de modificar o valor do atributo privado `_text` de fora da classe.

  void clear() => _text = "";
  // `clear` é um método de ação responsável por limpar o display,
  // redefinindo `_text` para uma string vazia.
  //Não é um setter, pois não recebe um valor externo para definir o estado do display, mas sim uma ação específica que sempre tem o mesmo efeito: limpar o texto.

  void append(String value) => _text += value;
  // `append` é um método de ação responsável por adicionar texto ao final do conteúdo atual do display.
  //Também não é um setter.

  void backspace() {
    if (_text.isEmpty) return;
    _text = _text.substring(0, _text.length - 1);
  }
  // `backspace` é um método de ação responsável por remover o último caractere do texto atual do display.
  //Usa o substring para isso, seria similar a pegar uma lista, percorrer ela até o penúltimo elemento e criar uma nova lista com esses elementos, ou seja, sem o último elemento.
}

class CalculatorEngine {

  String _normalize(String s) {
    return s.replaceAll('×', 'x').replaceAll('X', 'x').trim();
    // O método `_normalize` é uma função privada que faz:
    // - Todos os caracteres '×' e 'X' serem substituídos por 'x'.
    // - Qualquer espaço em branco no início ou no final da string ser removido.
  }

  // Aqui é onde a conta de fato acontece.
  // O método recebe uma expressão em texto, como "2+3" ou "10.5 / 2",
  // normaliza esse conteúdo para um formato padrão, verifica se ele segue
  // o padrão "número operador número", separa essas três partes e, por fim,
  // chama outro método para aplicar a operação e retornar o resultado.

  double evaluate(String expression) {
    final exp = _normalize(expression);
    
    // `RegExp` é uma classe nativa do Dart usada para trabalhar com expressões regulares,
    // ou seja, padrões que permitem validar, buscar e extrair partes de um texto.
    // Esta expressão regular valida e separa uma conta simples no formato
    // "número operador número".
    // Estrutura esperada:
    // - pode haver espaços no começo e no fim
    // - o primeiro número pode ter sinal opcional (`+` ou `-`)
    // - o número pode ser inteiro ou decimal com ponto
    // - depois vem um operador (`+`, `-`, `*`, `/` ou `x`)
    // - em seguida vem o segundo número, com a mesma regra do primeiro
    //
    // Exemplo de expressões aceitas:
    // - "2+3"
    // - "10 - 4"
    // - "-5*8"
    // - "3.5 / 2"
    //
    // Grupos capturados pela regex:
    // - grupo 1: primeiro número
    // - grupo 2: operador
    // - grupo 3: segundo número
    //
    // Explicando os principais trechos:
    // - `^` e `$` garantem que a string inteira siga exatamente esse formato
    // - `\s*` permite zero ou mais espaços
    // - `[+-]?` aceita sinal opcional no número
    // - `\d+` exige um ou mais dígitos
    // - `(?:\.\d+)?` permite a parte decimal de forma opcional
    // - `([+\-*/x])` captura o operador da conta


    
    final regex = RegExp(
      r'^\s*([+-]?\d+(?:\.\d+)?)\s*([+\-*/x])\s*([+-]?\d+(?:\.\d+)?)\s*$',
    );

    final match = regex.firstMatch(exp);
    if (match == null) {
      throw FormatException("Expressão inválida: '$expression'");
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
        if (b == 0) throw UnsupportedError("Divisão por zero");
        return a / b;
      default:
        throw UnsupportedError("Operador não suportado ou inexistente: $op");
    }
  }
  //O método `_apply` é uma função privada que recebe dois números e um operador, e retorna o resultado da operação correspondente. Ele usa um switch para determinar qual operação realizar com base no operador fornecido.
}

class CalculatorController {
  //O `CalculatorController` é a classe que faz a ponte entre a interface (teclas e display) e a lógica de cálculo (engine). Ele recebe as teclas pressionadas, atualiza o display e, quando necessário, chama o engine para calcular o resultado.
  final Display display;
  final CalculatorEngine engine;

  /// Este construtor permite receber dependências prontas de fora da classe,
  /// como objetos que ela precisa para funcionar.
  /// Isso é chamado de injeção de dependência.
  /// Se nenhum valor for passado, o construtor cria as dependências padrão.
  /// Assim, a classe pode funcionar normalmente sozinha, mas também permite
  /// substituir essas dependências quando for necessário, como em testes
  /// ou em versões diferentes da implementação.

  CalculatorController({Display? display, CalculatorEngine? engine})
      : display = display ?? Display(),
        engine = engine ?? CalculatorEngine();

  void press(Key key) {
    switch (key.type) {
      case KeyType.digit:
      case KeyType.operator:
        // Para dígito ou operador: apenas anexa ao display.
        // Se tiver `value`, usa ele; senão usa o `label`.
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
  // O método `_handleAction` é uma função privada que recebe uma ação de cálculo e executa a operação correspondente no display. Ele usa um switch para determinar qual ação realizar com base no tipo de ação fornecido.

  void _compute() {
    final input = display.text.trim();
    if (input.isEmpty) return;

    try {
      final result = engine.evaluate(input);

      // Se for inteiro, mostra sem ".0"
      final intCandidate = result.toInt();
      final formatted = (result == intCandidate) ? "$intCandidate" : "$result";

      display.setText(formatted);
    } catch (_) {
      display.setText("Erro");
    }
  }
  // O método `_compute` é uma função privada que pega o texto atual do display, tenta avaliar a expressão usando o engine, e atualiza o display com o resultado formatado. Se ocorrer algum erro durante a avaliação (como formato inválido ou divisão por zero), ele exibe "Erro" no display.
}

void main() {
  final calc = CalculatorController();

  // Simulação: 2 x 2 Enter
  final keys1 = <Key>[
    const Key(label: "2", type: KeyType.digit),
    const Key(label: "x", type: KeyType.operator, value: "x"),
    const Key(label: "2", type: KeyType.digit),
    const Key(label: "Enter", type: KeyType.action, action: CalcAction.enter),
  ];

  for (final k in keys1) {
    calc.press(k);
    print("Apertou '${k.label}' -> display: ${calc.display.text}");
  }

  print("\n--- Outro exemplo: 10/5 ---");
  calc.press(const Key(label: "C", type: KeyType.action, action: CalcAction.clear));
  calc.press(const Key(label: "1", type: KeyType.digit));
  calc.press(const Key(label: "0", type: KeyType.digit));
  calc.press(const Key(label: "/", type: KeyType.operator, value: "/"));
  calc.press(const Key(label: "5", type: KeyType.digit));
  calc.press(const Key(label: "Enter", type: KeyType.action, action: CalcAction.enter));
  print("Resultado: ${calc.display.text}");

  print("\n--- Erro: 2/0 ---");
  calc.press(const Key(label: "C", type: KeyType.action, action: CalcAction.clear));
  calc.press(const Key(label: "2", type: KeyType.digit));
  calc.press(const Key(label: "/", type: KeyType.operator, value: "/"));
  calc.press(const Key(label: "0", type: KeyType.digit));
  calc.press(const Key(label: "Enter", type: KeyType.action, action: CalcAction.enter));
  print("Resultado: ${calc.display.text}");
}