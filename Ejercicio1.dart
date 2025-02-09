void main() {
  int count = 15;
  List<int> fibonacciNumbers = generateFibonacci(count);

  print("Los primeros $count números de la sucesión de Fibonacci son: $fibonacciNumbers");
} 

List<int> generateFibonacci(int n) {
  List<int> fibonacci = [];
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }
  return fibonacci;
}

