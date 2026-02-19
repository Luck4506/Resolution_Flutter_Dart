int tamanhoOuZero(String? texto) {
  if (texto == null) {
    return 0;
  }
  return texto.length;
}

void main() {
  final texto = 'Microeletronica';
  print(tamanhoOuZero(texto));
}
