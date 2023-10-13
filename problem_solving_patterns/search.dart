int search(List<int> list, int val) {
  int min = 0;
  int max = list.length - 1;
  while(min <= max) {
    int middle = ((min + max) / 2).floor();
    int currentElement = list[middle];
    if (currentElement < val) {
      min = middle + 1;
    } else if (currentElement > val) {
      max = middle - 1;
    } else {
      return middle;
    }
  }
  return -1;
}

void main() {
  print(search([2,3,10], 10,));
}