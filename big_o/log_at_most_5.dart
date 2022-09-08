import 'dart:math';

void logAtMost5 (int n) {
  for (int i = 0; i <= min(5, n); i++) {
    print(i);
  }
}

void main() {
  logAtMost5(2);
}