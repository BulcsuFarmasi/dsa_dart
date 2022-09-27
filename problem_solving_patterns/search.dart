int search(List<int> list, int val) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == val) {
      return i;
    }
  }
  return -1;
}

void main() {
  print(search([3,2,10], 10,));
}