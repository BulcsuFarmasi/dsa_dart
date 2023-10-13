int countUniqueValues(List<int> list) {
  if (list.length == 0) {
    return 0;
  }

  int i = 0;

  for (int j = 1; j < list.length; j++) {
    if (list[i] != list[j]) {
      i++;
      list[i] = list[j];
    }
  }
  return i+1;
}

void main() {
  print(countUniqueValues([-2,-2,-1,0,1]));
}