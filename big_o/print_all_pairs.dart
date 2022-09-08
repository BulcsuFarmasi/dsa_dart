void printAllPairs(int n) {
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      print('$i $j');
    }
  }
}

void  main() {
  printAllPairs(23);
}