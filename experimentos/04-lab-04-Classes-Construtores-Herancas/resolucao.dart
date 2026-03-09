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

//Classes Abstratas
abstract class MeioDeTransporte {
  int id;
  String fabricante;
  String modelo;
  double capacidadeDeCarga;
  Combustivel tipoCombustivel;

  MeioDeTransporte(
    this.id,
    this.fabricante,
    this.modelo,
    this.capacidadeDeCarga,
    this.tipoCombustivel,
  );

  void imprimirInformacoes() {
    print('Informações do Meio de trasnporte:');
    print('ID: $id');
    print('Fabricante: $fabricante');
    print('Modelo: $modelo');
    print('Capacidade de Carga: $capacidadeDeCarga kg');
    print('Tipo de Combustível: $tipoCombustivel');
  }
}

class TrasporteTerrestre extends MeioDeTransporte {
  String placa;
  String chassi;
  String renavam;

  TrasporteTerrestre(
    int id,
    String fabricante,
    String modelo,
    double capacidadeDeCarga,
    Combustivel tipoCombustivel,
    this.placa,
    this.chassi,
    this.renavam,
  ) : super(id, fabricante, modelo, capacidadeDeCarga, tipoCombustivel);

  @override
  void imprimirInformacoes() {
    super.imprimirInformacoes();
    print('Placa: $placa');
    print('Chassi: $chassi');
    print('Renavam: $renavam');
  }
}

//Classes Concretas

class Automovel extends TrasporteTerrestre {
  int numeroPortas;

  Automovel(
    int id,
    String fabricante,
    String modelo,
    double capacidadeDeCarga,
    Combustivel tipoCombustivel,
    String placa,
    String chassi,
    String renavam,
    this.numeroPortas,
  ) : super(
        id,
        fabricante,
        modelo,
        capacidadeDeCarga,
        tipoCombustivel,
        placa,
        chassi,
        renavam,
      );

  @override
  void imprimirInformacoes() {
    super.imprimirInformacoes();
    print('Número de Portas: $numeroPortas');
  }
}

class Motocicleta extends TrasporteTerrestre {
  int cilindradas;

  Motocicleta(
    int id,
    String fabricante,
    String modelo,
    double capacidadeDeCarga,
    Combustivel tipoCombustivel,
    String placa,
    String chassi,
    String renavam,
    this.cilindradas,
  ) : super(
        id,
        fabricante,
        modelo,
        capacidadeDeCarga,
        tipoCombustivel,
        placa,
        chassi,
        renavam,
      );

  @override
  void imprimirInformacoes() {
    super.imprimirInformacoes();
    print('Cilindradas: $cilindradas cc');
  }
}

class Embarcacao extends MeioDeTransporte {
  int capacidadeDeContainer;

  Embarcacao(
    int id,
    String fabricante,
    String modelo,
    double capacidadeDeCarga,
    Combustivel tipoCombustivel,
    this.capacidadeDeContainer,
  ) : super(id, fabricante, modelo, capacidadeDeCarga, tipoCombustivel);

  @override
  void imprimirInformacoes() {
    super.imprimirInformacoes();
    print('Capacidade de Container: $capacidadeDeContainer TEUs');
  }
}

class Aeronave extends MeioDeTransporte {
  double envergaduraDasAsas;

  Aeronave(
    int id,
    String fabricante,
    String modelo,
    double capacidadeDeCarga,
    Combustivel tipoCombustivel,
    this.envergaduraDasAsas,
  ) : super(id, fabricante, modelo, capacidadeDeCarga, tipoCombustivel);

  @override
  void imprimirInformacoes() {
    super.imprimirInformacoes();
    print('Envergadura das Asas: $envergaduraDasAsas metros');
  }
}

void main() {
  Automovel carro = Automovel(
    1,
    'Volkswagen',
    'Gol',
    500.0,
    Combustivel.gasolina,
    'ABC-1234',
    '9BWZZZ377VT004251',
    '123456789',
    4,
  );
  carro.imprimirInformacoes();

  print('-----------------------------');

  Motocicleta moto = Motocicleta(
    2,
    'Honda',
    'CB500X',
    200.0,
    Combustivel.gasolina,
    'DEF-5678',
    '9BWZZZ377VT004252',
    '987654321',
    500,
  );
  moto.imprimirInformacoes();

  print('-----------------------------');

  Embarcacao barco = Embarcacao(
    3,
    'Azimut',
    'Grande 35 Metri',
    10000.0,
    Combustivel.dieselS10,
    2,
  );
  barco.imprimirInformacoes();

  print('-----------------------------');

  Aeronave aviao = Aeronave(
    4,
    'Boeing',
    '747-400F',
    120000.0,
    Combustivel.querosene,
    68.5,
  );
  aviao.imprimirInformacoes();
}
