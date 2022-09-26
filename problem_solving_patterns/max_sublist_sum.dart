import 'dart:developer';

int? maxSublistSum(List<int> list, int num) {
  if (num > list.length) {
    return null;
  }

  double max = double.negativeInfinity;

  for (int i = 0; i < list.length - num + 1; i++) {
    int temp = 0;
    for (int j = 0; j < num ; j++) {
      temp +=  list[i + j];
    }
    if (temp > max) {
      max = temp;
    }
  }

  return max;
}

void main() {
  print(maxSublistSum([3,10,2,5,6],3));
}