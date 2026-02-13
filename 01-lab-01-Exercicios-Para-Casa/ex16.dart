int tamanhoOuZero(String? s) {
  if (s == null) {
    return 0;
  }
  return s.length;
}

void main() {
  final texto = 'Microeletronica';
  print(tamanhoOuZero(texto));
}
