void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  List<int> uniqueNumbers = getUniqueElements(numbers);

  print("Lista original: $numbers");
  print("Lista de elementos únicos: $uniqueNumbers");
}

List<T> getUniqueElements<T>(List<T> inputList) {
  return inputList.toSet().toList();
}