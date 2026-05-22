// 3. Crie uma função chamada `ehPar` que receba um número inteiro e retorne `true` caso ele seja par ou `false` caso seja ímpar. Teste a função com pelo menos cinco valores diferentes.

bool ehPar(int numero) {
  if (numero % 2 == 0) {
    return true;
  } else
    return false;
}

void main(List<String> args) {
  for (var i = 0; i < 61; i++) {
    ehPar(i) == true? print('O número ${i} é par') : print('O número ${i} é ímpar');
  }
}
