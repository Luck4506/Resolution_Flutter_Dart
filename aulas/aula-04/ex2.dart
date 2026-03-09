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

}

void main() {
  Veiculo v1 = Veiculo('123', 'ABC');
  v1.tipoPropulsao = Propulsao.combustao;
  v1.tiposCombustivel = [Combustivel.gasolina, Combustivel.alcool];

  Veiculo v2 = Veiculo('456', 'BCD');
  v2.tipoPropulsao = Propulsao.eletrica;

}
