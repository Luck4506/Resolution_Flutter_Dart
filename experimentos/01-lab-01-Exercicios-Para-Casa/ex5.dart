void main() {
  var n1 = 10;
  var n2 = 9.5;

  if (n1 < 0 || n1 > 10 || n2 < 0 || n2 > 10) {
    print("Nota inválida, as notas devem ser entre 0 e 10");
    return;
  }
  var media = (n1 + n2) / 2;

  if (media == 10) {
    print("Sua média foi ${media}, você foi APROVADO com distinção! Parabéns!");
  }
  else if (media >= 8){
    print("Sua média foi ${media}, você foi APROVADO! Ótimo");
  }
  else if (media >= 6){
    print("Sua média foi ${media}, você foi APROVADO!");
  }
  else{
    print("Sua média foi ${media}, você foi REPROVADO");
  }
}
