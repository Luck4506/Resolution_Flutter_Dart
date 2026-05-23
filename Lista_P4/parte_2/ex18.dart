// 18. Crie uma classe chamada `Contato` com nome, telefone e email. Depois, crie uma função que busque um contato pelo nome em uma lista de contatos.

class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);

  @override
  String toString() {
    return 'Nome: $nome | Telefone: $telefone | Email: $email';
  }
}

Contato? buscarContatoPeloNome(
  List<Contato> listaDeContatos,
  String nomeProcurado,
) {
  for (var contato in listaDeContatos) {
    if (contato.nome.toLowerCase() == nomeProcurado.toLowerCase()) {
      return contato;
    }
  }

  return null;
}

void main(List<String> args) {
  List<Contato> listaDeContatos = [
    Contato('Lucas', '1199999-1111', 'lucas@email.com'),
    Contato('Ana', '1199999-2222', 'ana@email.com'),
    Contato('Pedro', '1199999-3333', 'pedro@email.com'),
    Contato('Mariana', '1199999-4444', 'mariana@email.com'),
  ];

  String nomeProcurado = 'Ana';

  Contato? contatoEncontrado = buscarContatoPeloNome(
    listaDeContatos,
    nomeProcurado,
  );

  if (contatoEncontrado != null) {
    print('Contato encontrado:');
    print(contatoEncontrado);
  } else {
    print('Contato não encontrado.');
  }
}
