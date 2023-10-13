import 'dart:math';

bool same(List<int> list, List<int> squaredList) {
  if (list.length != squaredList.length) {
    return false;
  }
  Map<int, int> frequencyCounter1 = {};
  Map<int, int> frequencyCounter2 = {};

  for (int val in list) {
    frequencyCounter1[val] = (frequencyCounter1.containsKey(val) ? frequencyCounter1[val]! : 0) + 1;
  }

  for (int val in squaredList) {
    frequencyCounter2[val] = (frequencyCounter2.containsKey(val) ? frequencyCounter2[val]! : 0) + 1;
  }

  bool containsKeyAndAmount = true;
  frequencyCounter1.forEach((int key, int value) {
    if(!frequencyCounter2.containsKey(pow(key, 2))) {
      containsKeyAndAmount = false;
    }
    if (frequencyCounter2[pow(key, 2)] != frequencyCounter1[key]) {
      containsKeyAndAmount = false;
    }
  });
  return containsKeyAndAmount;
}

void main() {
  print(same([1,4,1],[9,1,1]));
}