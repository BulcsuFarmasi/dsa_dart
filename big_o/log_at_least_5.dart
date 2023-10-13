import 'dart:math';

void logAtLeast5 (int n) {
  for (int i = 0; i <= max(5, n); i++) {
    print(i);
  }
}

void main() {
  logAtLeast5(1000);
}