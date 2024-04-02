bool isOdd(int value) => value % 2 != 0;

bool someRecursive(List<int> list, dynamic callback) {
  if (list.isEmpty) {
    return false;
  }

  if (callback(list[0])) {
    return true;
  }

  return someRecursive(list.sublist(1), callback);
}

void main() {
  print(someRecursive([2,4], isOdd));
}

