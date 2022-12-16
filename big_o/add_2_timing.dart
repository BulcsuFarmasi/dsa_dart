double addUpTo(int n) {
  return n * (n + 1) / 2;
}

void main() {
    int t1 = DateTime.now().millisecondsSinceEpoch;
    addUpTo(100000000000);
    int t2 = DateTime.now().millisecondsSinceEpoch;

    print('Time elapsed: ${(t2 - t1) / 1000} seconds');
}