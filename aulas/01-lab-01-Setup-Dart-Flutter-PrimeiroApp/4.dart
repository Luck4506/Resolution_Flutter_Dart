String veredito(int nota) {

  ///Péssimo código
  
  String mensagem = 'Reprovado';
  if (nota >= 5) {
    mensagem = 'Aprovado';
  }

  return mensagem;
}

void main() {
  print(veredito(10));
}
