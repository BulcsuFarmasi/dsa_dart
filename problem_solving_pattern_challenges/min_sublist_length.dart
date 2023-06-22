int minSublistLength(List<int> ints, int sum) {
  int i = 0;
  int j = 0;
  int subArraySum = 0;
  int? minSubarrayLength;

  while (i <= ints.length) {
    if (subArraySum < sum) {
        subArraySum += ints[i];
        i++;
    } else {
      int length = i - j;
      if (minSubarrayLength == null || length < minSubarrayLength) {
        minSubarrayLength = length;
        if (i >= ints.length) {
          break;
        }
      }
      j++;
      subArraySum -= ints[j];

      if (subArraySum <= sum) {
        j = i;
        subArraySum = 0;
      }
    }
  }


  return minSubarrayLength ?? 0;
}

void main() {
  print(minSublistLength([2, 3, 1, 2, 4, 3], 7));
}
