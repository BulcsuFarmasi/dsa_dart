void printAllPairs(int n) {
  for (int  i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print('$i $j');
    }
  }
}

void main() {
  printAllPairs(5);
}