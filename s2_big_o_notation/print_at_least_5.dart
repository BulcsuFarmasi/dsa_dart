import 'dart:math';

void printAtLeast5(int n) {
  for (int i = 1; i <= max(5, n); i++) {
    print(i);
  }
}


void main () {
  printAtLeast5(3);
}