/*
1. Crie uma função chamada `calcularMMC` que receba dois números inteiros representando denominadores de frações e retorne o menor múltiplo comum entre eles. Essa função será útil em situações nas quais precisamos somar ou comparar frações com denominadores diferentes.

   A função deve:

   - receber dois parâmetros inteiros;
   - não aceitar denominadores iguais a zero;
   - funcionar corretamente mesmo quando os valores recebidos forem negativos;
   - retornar sempre um número inteiro positivo;
   - usar uma estratégia baseada no cálculo do MDC ou outra abordagem matematicamente correta.

   Exemplos esperados:

   ```dart
   calcularMMC(2, 3);   // retorna 6
   calcularMMC(4, 6);   // retorna 12
   calcularMMC(8, 12);  // retorna 24
   calcularMMC(-5, 10); // retorna 10
   ```

*/

int calcularMMC(int n1, int n2) {
  if (n1 == 0 || n2 == 0) {
    throw ArgumentError('Os denominadores precisam ser diferente de 0');
  }

  int MDC = calcularMDC(n1, n2);

  return ((n1 * n2) / MDC).toInt();
}

int calcularMDC(int n1, int n2) {
  // Algorítimo de Euclides
  
  late int divisor;
  late int dividendo;
  if (n1 > n2) {
    dividendo = n1;
    divisor = n2;
  } 
  else {
    dividendo = n2;
    divisor = n1;
  }
  int resto = dividendo % divisor;

  while (resto != 0) {
    dividendo = divisor;
    divisor = resto;
    resto = dividendo % divisor;
  }

  return divisor;
}



void main(List<String> args) {
  int n1 = 40;
  int n2 = 24;

  print(calcularMMC(n1, n2));
  print(calcularMMC(2, 3));   // retorna 6
  print(calcularMMC(4, 6));   // retorna 12
  print(calcularMMC(8, 12));  // retorna 24
  print(calcularMMC(-5, 10)); // retorna 10
}
