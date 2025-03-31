int addUpTo(int n) {
  int total = 0;

  for (int i = 1; i <= n; i++) {
    total += i;
  }

  return total;
}

void main () {
  print(addUpTo(10));
}