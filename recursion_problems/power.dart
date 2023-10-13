int power(int base, int exponent) {
  if (exponent == 0) {
    return 1;
  }

  if (exponent == 1) {
    return base;
  }

  return base * power(base, exponent - 1);
}


void main() {
  print(power(3,4));
}