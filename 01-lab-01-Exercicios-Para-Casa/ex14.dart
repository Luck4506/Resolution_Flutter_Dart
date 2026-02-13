int maximo(List<int> nums) {
  int maior = nums[0];

  for (var i = 1; i < nums.length; i++) {
    if (nums[i] > maior) {
      maior = nums[i];
    }
  }
  return maior;
}

void main() {
  final List<int> lista = [1, 3, 675, 23, 432, 6, 8, 900, 8786];

  print("O maior número da lista é ${maximo(lista)}");
}
