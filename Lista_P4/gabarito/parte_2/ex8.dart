bool todosPositivos(List<int> numeros) {
  for (int numero in numeros) {
    if (numero <= 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print(todosPositivos([1, 2, 3]));
  print(todosPositivos([1, -2, 3]));
}
