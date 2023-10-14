int recursiveRange(int number) {
  if (number == 0) {
    return 0;
  }

  return number + recursiveRange(number - 1);
}

void main() {
  print(recursiveRange(20));
}
