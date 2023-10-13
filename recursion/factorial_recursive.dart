int factorialRecursive(int num) {
  if (num == 1) return 1;
  return num * factorialRecursive(num - 1);
}

void main() {
  print(factorialRecursive(32));
}