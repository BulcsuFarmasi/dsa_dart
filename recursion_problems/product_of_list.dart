int productOfList(List<int> numbers) {
  if (numbers.isEmpty) {
    return 1;
  }

  return numbers[0] * productOfList(numbers.sublist(1));
}

void main() {
  print(productOfList([7,4,2]));
}