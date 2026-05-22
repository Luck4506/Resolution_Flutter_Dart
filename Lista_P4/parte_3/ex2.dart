/*
2. Crie uma classe chamada `Fracao` com os atributos `numerador` e `denominador`. A classe deve representar uma fração matemática e permitir a soma entre duas frações usando o MMC dos denominadores.

Atenção às regras de soma de frações: quando os denominadores são iguais, conserva-se o denominador e somam-se apenas os numeradores. Quando os denominadores são diferentes, é necessário encontrar um denominador comum, normalmente usando o MMC, antes de somar as frações.

A classe deve:
- possuir um construtor que receba `numerador` e `denominador`;
- não permitir que o denominador seja zero;
- ter um método chamado `somar` que receba outra `Fracao` como parâmetro;
- usar o MMC dos denominadores para calcular a soma corretamente;
- retornar uma nova `Fracao` como resultado da soma;
- ter um método para exibir a fração no formato `numerador/denominador`.

Exemplo esperado:

```dart
final f1 = Fracao(1, 2);
final f2 = Fracao(1, 3);

final resultado = f1.somar(f2);

print(resultado); // 5/6
```
*/
