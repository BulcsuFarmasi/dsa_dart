List<int> double(List<int> lis) {
  List<int> newLis = [];
  for (int i = 0; i < lis.length; i++) {
    newLis.add(2 * lis[i]);
  }
  return newLis;
}

void main() {
  print(double([70, 12, 3, 4]));
}