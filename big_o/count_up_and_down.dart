void countUpAndDown(int n) {
  print("Going up!");
  for (var i = 0; i < n; i++) {
    print(i);
  }
  print('At the top!\nGoing down...');
  for (var j = n -1; j >= 0; j--) {
    print(j);
  }
  print('Back down. Bye!');
}

void main() {
  countUpAndDown(20);
}