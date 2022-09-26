int countUniqueValues(List<int> list) {
  if (list.length == 0) {
    return 0;
  }

  int countOfUniqueValues = 1;

  for (int i = 0; i < list.length -1; i++) {
    if (list[i] != list[i + 1]) {
      countOfUniqueValues++;
    }
  }
  return countOfUniqueValues;
}

void main() {
  print(countUniqueValues([-2,-2,-1,0,1]));
}