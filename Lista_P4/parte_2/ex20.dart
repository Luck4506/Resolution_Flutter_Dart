// 20. Crie um desafio integrador: implemente uma agenda simples em Dart usando classes, listas e funções. A agenda deve permitir cadastrar contatos, listar contatos, buscar por nome e remover um contato. Sem banco de dados, tudo em memória.

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

class ListaDeContato {
  late List<Contato> listaDeContatos;

  ListaDeContato() {
    listaDeContatos = [];
  }

  void cadastrarContato(String nome, String telefone, String email) {
    Contato contatoInserido = Contato(nome, telefone, email);
    this.listaDeContatos.add(contatoInserido);
  }

  void listarContatos() {
    print('Lista de contatos:');
    for (var contato in this.listaDeContatos) {
      print(contato);
      print('\n');
    }
  }

  void buscarContato(String nomeProcurado) {
    bool flagAchou = false;
    nomeProcurado = nomeProcurado.toLowerCase();
    for (var contato in this.listaDeContatos) {
      if (contato.nome.toLowerCase() == nomeProcurado) {
        print(contato);
        flagAchou = true;
      }
    }

    if (!flagAchou) {
      print('Nenhum contato encontrado');
    }
  }

  void removerContato(String nomeProcurado) {
    int tamanhoAntes = this.listaDeContatos.length;
    nomeProcurado = nomeProcurado.toLowerCase();

    this.listaDeContatos.removeWhere(
      (item) => item.nome.toLowerCase() == nomeProcurado,
    );
    if (tamanhoAntes == this.listaDeContatos.length) {
      print('Contato não encontrado para excluir');
    } else {
      print('Contato excluido!');
    }
  }
}

void main(List<String> args) {
  ListaDeContato listaDeContatos = ListaDeContato();

  listaDeContatos.cadastrarContato('Lucas', '1199999-1111', 'lucas@email.com');
  listaDeContatos.cadastrarContato('Ana', '1199999-2222', 'ana@email.com');

  listaDeContatos.listarContatos();

  listaDeContatos.buscarContato('Ana');
  listaDeContatos.buscarContato('Sofia');

  listaDeContatos.cadastrarContato(
    'Henrique',
    '1199999-3333',
    'henrique@email.com',
  );

  listaDeContatos.cadastrarContato('Sofia', '1199999-4444', 'sofia@email.com');

  listaDeContatos.listarContatos();
  listaDeContatos.removerContato('Kaori');
  listaDeContatos.removerContato('Lucas');
  listaDeContatos.listarContatos();

  // ];
}
