enum Propulsao { combustao, eletrica, hibrida, mecanica }

enum Combustivel {
  gasolina,
  alcool,
  dieselS500,
  dieselS10,
  biodiesel,
  gnv,
  querosene,
  bunker,
}

class Veiculo {
  String renavam;
  String placa;

  //Opcional
  String? chassi;
  String? marca;
  int? anoFabricacao;
  int? anoModelo;
  Propulsao? tipoPropulsao;
  List<Combustivel>? tiposCombustivel;

  Veiculo(this.renavam, this.placa);
  //O costrutor é para criar uma instância mínima, logo o construtor não deve
  //ser grander do que o necessário, ou seja, os atributos obrigatórios

  bool ehMesmoVeiculo(Veiculo outro) {
    if (this.renavam == outro.renavam && this.chassi == outro.chassi) {
      return true;
    }
    return false;
  }
}

void main() {
  // v1 e v2 ocupam espaços diferentes na memória, ou seja, são objetos diferentes
  Veiculo v1 = Veiculo('123', 'ABC');

  Veiculo v2 = Veiculo('456', 'BCD');

  //Por padrão está comparando referências, desde que não exista a modificação
  //comportamental do operador ==, em dart podemos definir para cada classe o
  //comportamento do operador ==: Comparar conteúdos ao invés de referências

  if (v1.ehMesmoVeiculo(v2)) {
    print('São o mesmo veículo');
  } else {
    print('São veículos diferentes');
  }
}
