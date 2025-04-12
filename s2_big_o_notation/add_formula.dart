double addUpTo(int n) {
  return n * (n + 1) / 2;
}

void main () {
    final Stopwatch stopwatch = Stopwatch()..start();
  addUpTo(1000000000);
  stopwatch.stop();
  print('Time elapsed: ${stopwatch.elapsedMilliseconds / 1000} seconds'); 
}