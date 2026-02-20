int elevarAoQuadrado(num) {
  return num * num;
}

List<int> aplicar(List<int> nums, int Function(int) f) {
  for (var i = 0; i < nums.length; i++) {
    nums[i] = f(nums[i]);
  }
  return nums;
}

void mostrarLista(List<int> nums) {
  for (var element in nums) {
    print(element);
  }
}

void main() {
  List<int> numerosBase = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  mostrarLista(numerosBase);
  print('');
  mostrarLista(aplicar(numerosBase, elevarAoQuadrado));
}
