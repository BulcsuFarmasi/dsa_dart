List<int> collectOddValuesPure(List<int> lis) {
  final List<int> newLis = [];

  if (lis.length == 0) {
    return newLis;
  }

  if (lis[0] % 2 != 0) {
    newLis.add(lis[0]);
  }

  newLis.addAll(collectOddValuesPure(lis.sublist(1)));

  return newLis;


}


void main() {
  print(collectOddValuesPure([1,2,3,6,77,78,90]));
}