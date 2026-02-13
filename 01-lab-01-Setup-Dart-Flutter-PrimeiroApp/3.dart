String veredito(var nota) {
  if (nota >= 5) {
   return 'Aprovado';
  } 
  return 'Reprovado';
}

void main() {
  print(veredito(10));
}
