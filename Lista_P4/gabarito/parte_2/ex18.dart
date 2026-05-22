class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);
}

Contato? buscarContato(List<Contato> contatos, String nomeBuscado) {
  for (Contato contato in contatos) {
    if (contato.nome == nomeBuscado) {
      return contato;
    }
  }

  return null;
}

void main() {
  List<Contato> contatos = [
    Contato('Ana', '9999-1111', 'ana@email.com'),
    Contato('Bruno', '9999-2222', 'bruno@email.com'),
  ];

  Contato? contato = buscarContato(contatos, 'Ana');

  if (contato != null) {
    print('${contato.nome} - ${contato.telefone} - ${contato.email}');
  } else {
    print('Contato nao encontrado.');
  }
}
