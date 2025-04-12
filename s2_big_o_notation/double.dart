List<int> double(List<int> list) {
  List<int> newList = [];

  for (int i = 0; i < list.length; i++) {
    newList.add(2 * list[i]);
  }

  return newList;
}


void main () {
  print(double([20, 70, 40, 33, 55, 99, 3]));
}