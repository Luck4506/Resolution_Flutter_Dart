String veredito(int nota) {

  //isso é necessário para evitar erros de null safety, já que 'nota' é do
  // tipo int? e pode ser nula.
  if (nota >= 5) {
    return 'Aprovado';
  }
  return 'Reprovado';
}

void main() {
  int? nota = null;

  if (nota == null) {
    print('Nota é nula, não podemos determinar o veredito.');
  }
  else{
    print(veredito(nota));
  }
  
}
