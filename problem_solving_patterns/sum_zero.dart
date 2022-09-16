List<int>? sumZero(List<int> lis) {
  for (int i = 0; i < lis.length; i++) {
    for (int j = 0; j < lis.length; j++) {
      if (lis[i] + lis[j] == 0 ) {
        return [lis[i], lis[j]]; 
      }
    }
  }
  return null;
}

void main() {
  print(sumZero([-4,1,2]));
}