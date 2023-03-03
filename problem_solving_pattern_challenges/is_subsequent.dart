bool isSubsequent (String search, containing) {
  if (search.isEmpty || containing.isEmpty) {
    return false;
  }

  int searchPointer = 0;

  for (int i = 0; i < containing.length; i++) {
    if (containing[i] == search[searchPointer]) {
      searchPointer++;
    }
    if (searchPointer == search.length) {
      return true;
    }
  }

  return false;
}

void main() {
  print(isSubsequent('sing', 'sting'));
}