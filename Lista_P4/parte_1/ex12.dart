// 12. Crie uma função chamada `buscarNome` que receba uma lista de nomes e um nome buscado. A função deve retornar `true` caso o nome exista na lista e `false` caso contrário.

bool buscarNome(List<String> listaDeNomes, String nomeProcurado) {
  if (listaDeNomes.length < 1) {
    return false;
  }

  for (var nome in listaDeNomes) {
    if (nome == nomeProcurado) {
      return true;
    }
  }
  return false;
}

void main() {
  final nomes = ['Ana', 'Bruno', 'Carlos', 'Diana'];

  print(buscarNome(nomes, 'Bruno')); // true
  print(buscarNome(nomes, 'Mariana')); // false
  print(buscarNome([], 'Ana')); // false
}


