int sumRange(int num) {
  if (num == 1) return 1;
  return num + sumRange(num - 1);
}

void main() {
  print(sumRange(9));
}