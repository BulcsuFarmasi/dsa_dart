
import 'dart:math';

int? maxSublistSum(List<int> list, int num) {
  int maxSum = 0;
  int tempSum = 0;
  if (num > list.length) {
    return null;
  }

  for (int i = 0; i < num; i++) {
    maxSum += list[i];
  }

  tempSum = maxSum;

  for (int i = num; i < list.length; i++) {
    tempSum = tempSum - list[i - num] + list[i];
    maxSum = max(maxSum, tempSum);
  }

  return maxSum;
}

void main() {
  print(maxSublistSum([3,10,2,5,6],3));
}