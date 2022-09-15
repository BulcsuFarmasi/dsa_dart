import 'dart:math';

bool same(List<int> list, List<int> squaredList) {
  bool frequenciesMatch = true;
  for (int element in list) {
    int listFrequency = 0;
    for (int countElement in list) {
      if (element == countElement) {
        listFrequency++;
      }
    }
    int squaredListFrequency = 0;
    for (int squaredCountElement in squaredList) {
      if (squaredCountElement == pow(element, 2)) {
        squaredListFrequency++;
      }
    }
    if (listFrequency != squaredListFrequency) {
      frequenciesMatch = false;
      break;
    }
  }
  return frequenciesMatch;
}

void main() {
  print(same([1,3,1],[9,1,1]));
}