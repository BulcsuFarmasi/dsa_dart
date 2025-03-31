int addUpTo(int n) {
  int total = 0;

  for (int i = 1; i <= n; i++) {
    total += i;
  }

  return total;
}

void main () {
  final Stopwatch stopwatch = Stopwatch()..start();
  addUpTo(1000000000);
  stopwatch.stop();
  print('Time elapsed: ${stopwatch.elapsedMilliseconds / 1000} seconds'); 
}