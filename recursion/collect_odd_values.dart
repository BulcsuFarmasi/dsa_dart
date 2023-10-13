List<int> collectOddValues(List<int> lis) {
  final List<int> result = [];

  void helper(List<int> helperInput) {
    if (helperInput.length == 0) {
      return;
    }

    if (helperInput[0] % 2 != 0) {
      result.add(helperInput[0]);
    }

    helper(helperInput.sublist(1));
  }

  helper(lis);

  return result; 
}

void main (){
  print(collectOddValues([1,2,3,6,77,78,90]));
}