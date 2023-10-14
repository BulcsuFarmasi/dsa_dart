int factorial(int number) {
  if (number == 0 || number == 1) {
    return 1;
  }

  return number * factorial(number - 1);
}

void main() {
  print(factorial(7));
}
