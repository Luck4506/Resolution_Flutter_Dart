void main() {
  var a = 10;
  var b = 30;
  var c = 30;

  if (a > b && a > c){
    print("O número ${a} é o maior");
  }
  else if (b > a && b > c){
    print("O número ${b} é o maior");
  }
  else if (c > a && c > b){
    print("O número ${c} é o maior");
  }
  else{
    print("Impossível determinar um maior número, pois há números iguais na posição de maior");
  }

}
