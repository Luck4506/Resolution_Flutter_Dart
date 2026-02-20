void main() {
  var n1 = 10;
  var n2 = 9.5;
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
