void main() {
  List<String> nomes = ['Ana', 'Mariana', 'Joao', 'Carlos', 'Beatriz'];

  for (String nome in nomes) {
    if (nome.length > 5) {
      print(nome);
    }
  }
}
