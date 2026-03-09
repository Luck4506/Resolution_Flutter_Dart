enum StatusLampada { ligada, deslidada, offline }

class Lampada {
  int id;
  String modelo;
  StatusLampada status = StatusLampada.offline;

  Lampada(this.id, this.modelo);
}

void main() {
  Lampada l1 = Lampada(1, 'A1');
  Lampada l2 = Lampada(2, 'A2');

  print(l1.status);
  print(l2.status);
}
