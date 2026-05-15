**importante**

```text
projeto_flutter/
├
├── plano-de-ensino.md
├── cronograma.md
├── aulas/                          # notas/roteiros do professor (MD)
│   ├── 01-primeiro-contato.md
│   └── ...
├── exemplos/                       # demonstrações curtas (código do professor)
│   ├── 01-1-hello-flutter/
│   ├── 01-2-layout-basico/
│   └── ...
├── labs/                           # exercícios de laboratório, estudos e experimentos
│   ├── 01-lab-1-setup-e-run.md
│   ├── 02-lab-1-layout-e-rotas.md
│   └── ...
├── experimentos/                   # testes de conceito (PoCs, sandbox)
│   ├── exp-01-hot-reload-limits/
│   ├── exp-02-state-lifecycle/
│   └── ...
├── apps/                           # Apps A–D (entregáveis quinzenais / templates)
│   ├── app-a-ui-starter/
│   ├── app-b-interaction-state/
│   ├── app-c-data-api/
│   └── app-d-auth-firestore/
├── referencias/                    # links, boas práticas, cheatsheets
│   ├── links.md
│   └── boas-praticas.md
└── assets/                         # imagens para MD, diagramas, etc.
    └── ...

```

* ```lib/```
No diretório lib, colocamos o código em DART, é O MAIS IMPORTANTE DO PROJETO.
É onde está hospedado o código fonte.

* ```pubspec.yaml```
Neste arquivo, definimos:
Versão do fluter, plugins (pacotes) de dependência, ferramentas de teste e configurações de montagem (build).

```` yaml
name: aula_16_03
description: "A new Flutter project."
# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev
````

* Conceito: lint/linter;
No Python, a estilização de código é _obrigatória_, lá usamos uma especificação chapada pep8, nessa especificação é definido como o programador deve escrever o código (em termos de formatação).
O Flutter usa uma ferramenta linter chamada flutter lints que é abilitado no arquivo _pubspec.yaml_

* ```analysis_options_yaml```
Neste arquivo configuramos o comportamento de algumas configurações do linter

```yaml
linter:
  Em rules eu configuro o linter
  rules:
        avoid_print: true  # Uncomment to disable the `avoid_print` rule
        prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

```

* Estrutura geracional (código gerado)
Nos diretórios ```android/```, ```ios/```, ```web/```, ```macos/```, ```linux/```. Temos o código _nativo_ gerado pelo flutter.
Portanto, o que vão nas pastas de plataforma são códigos nativos.
EVITE MEXER NO QUE É GERADO

* ```test/```
Aqui escrevemos os testes _unitários_ e de _instrumentação_.

* Tarefa 1: Aprender a fazer um teste unitário em dart, primeiro sem flutter e depois com flutter

* Tarefa 2: Criar o app Hello World.

* Tarefa 3: Criar novamente o app Hello World, porém chamalo de calculadora IMC, modificar a tela para ter 2 campos (peso e altura) e clicar no botão calcular e fazer o cálculo do botão IMC.

* Tarefa 4: Pegar o exemplo de calculadora do professor, colocar todos os artefatos dentro da pasta lib/ de um novo projeto chamado "calculadora", modificar as classes MyHomePage e MyHomePageState para mostrar a tela de uma calculadora e fazer funcionar.
Dica: no projeto da calculadora, chame as classes da seguinte maneira:
MyApp -> Calculator
MyHomePage -> CalculatorUI
_MyHomePageState -> _CalculatorUiState
