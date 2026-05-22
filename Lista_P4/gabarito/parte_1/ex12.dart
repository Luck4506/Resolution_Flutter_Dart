bool buscarNome(List<String> nomes, String nomeBuscado) {
  for (String nome in nomes) {
    if (nome == nomeBuscado) {
      return true;
    }
  }

  return false;
}

void main() {
  List<String> nomes = ['Ana', 'Bruno', 'Carla'];

  print(buscarNome(nomes, 'Carla'));
  print(buscarNome(nomes, 'Pedro'));
}
