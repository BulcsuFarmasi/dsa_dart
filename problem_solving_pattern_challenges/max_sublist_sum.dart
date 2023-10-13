int? maxSublistSum(List<int> ints, int sublistLength) {
  if (sublistLength > ints.length) {
    return null;
  }

  int maxSublistSum = 0;
  int currentSublistSum = 0;

  for (int i = 0; i < ints.length; i++) {
    currentSublistSum += ints[i];

    if (i - sublistLength >= 0) {
      currentSublistSum -= ints[i - sublistLength];
    }

    if (currentSublistSum > maxSublistSum) {
      maxSublistSum = currentSublistSum;
    }
  }

  return maxSublistSum;
}

void main() {
  print(maxSublistSum([100, 3, 9, 4, 5], 4));
}
