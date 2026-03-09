//enumaration (lista enumerada)
//lista de valores constates e fixos.

//Umas lista enumerada serve para muitas coisas, como:
//Quando eu tenho um conjunto fixo de valores, que é muito difícil mudar.
// Ex: Dias da semana, meses do ano, estados de um país.

enum DiaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }
//Mais leve que vetores

void main() {
  DiaSemana hoje = DiaSemana.segunda;

  if (hoje == DiaSemana.sabado || hoje == DiaSemana.domingo) {
    print("Descanso!");
  } else {
    print("Dia útil!");
  }
  //Vantagem:
  //Não preciso traduzir, uso uma string literal
}
