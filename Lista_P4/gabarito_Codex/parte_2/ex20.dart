class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);
}

void cadastrarContato(
  List<Contato> contatos,
  String nome,
  String telefone,
  String email,
) {
  contatos.add(Contato(nome, telefone, email));
}

void listarContatos(List<Contato> contatos) {
  for (Contato contato in contatos) {
    print('${contato.nome} - ${contato.telefone} - ${contato.email}');
  }
}

Contato? buscarPorNome(List<Contato> contatos, String nome) {
  for (Contato contato in contatos) {
    if (contato.nome == nome) {
      return contato;
    }
  }

  return null;
}

void removerContato(List<Contato> contatos, String nome) {
  Contato? contato = buscarPorNome(contatos, nome);

  if (contato != null) {
    contatos.remove(contato);
    print('Contato removido.');
  } else {
    print('Contato nao encontrado.');
  }
}

void main() {
  List<Contato> agenda = [];

  cadastrarContato(agenda, 'Ana', '9999-1111', 'ana@email.com');
  cadastrarContato(agenda, 'Bruno', '9999-2222', 'bruno@email.com');

  print('Contatos cadastrados:');
  listarContatos(agenda);

  Contato? encontrado = buscarPorNome(agenda, 'Ana');
  if (encontrado != null) {
    print('Encontrado: ${encontrado.nome}');
  }

  removerContato(agenda, 'Bruno');

  print('Agenda atualizada:');
  listarContatos(agenda);
}
