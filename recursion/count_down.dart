void countDown(int num) {
  if (num <= 0) {
    print('All done!');
    return;
  }
  print(num);
  num--;
  countDown(num);
}

void countDownLoop(int num) {
  for(int i = num; i> 0; i++) {
    print(i);
  }
  print('All done!');
} 

void main() {
  countDown(6);
}