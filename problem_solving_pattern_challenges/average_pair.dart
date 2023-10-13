bool averagePair(List<int> ints, double average) {
  if (ints.isEmpty) {
    return false;
  }

  int i = 0;

  for (int j = i + 1; i < ints.length; j++) {
    if ((ints[i] + ints[j]) / 2 == average) {
      return true;
    } else if (j > ints.length) {
      i++;
      j = i + 1;
    }
  }

  return false;
}

void main() {
  print(averagePair([1,2,3], 2.5));
}
