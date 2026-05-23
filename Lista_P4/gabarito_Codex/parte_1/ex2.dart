void main() {
  double nota1 = 7.0;
  double nota2 = 5.0;

  double media = (nota1 + nota2) / 2;

  print('Media: $media');

  if (media >= 6) {
    print('Aprovado');
  } else if (media >= 4) {
    print('Recuperacao');
  } else {
    print('Reprovado');
  }
}
