List<int>? sumZero(List<int> lis) {
  int left = 0;
  int right = 0;
  while (left < right) {
    final sum = lis[left] + lis[right];
    if (sum == 0) {
      return [lis[left], lis[right]]; 
      
    } else if (sum > 0) {
      right--;
    } else {
      left++;
    }
  }
  return null;
}

void main() {
  print(sumZero([-4,1,2,4]));
}