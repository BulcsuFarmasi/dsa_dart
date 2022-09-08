int sum(List<int> lis) {
  int total = 0;
  for (int i = 0; i < lis.length; i++) {
    total += lis[i];
  }
  return total;
}


void main() {
  print(sum([1, 30, 33]));
}