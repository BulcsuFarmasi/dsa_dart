int factorialIterative(int num) {
  int factorial = 1;
  for (int i = num; i > 1; i--) {
    factorial *= i;
  }
  return factorial;
}

void main() {
  print(factorialIterative(6));
}
