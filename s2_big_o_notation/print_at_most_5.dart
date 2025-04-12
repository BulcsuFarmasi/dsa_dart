import 'dart:math';

void printAtMost5(int n) {
  for (int i = 1; i <= min(5, n); i++) {
    print(i);
  }
}


void main () {
  printAtMost5(90);
}