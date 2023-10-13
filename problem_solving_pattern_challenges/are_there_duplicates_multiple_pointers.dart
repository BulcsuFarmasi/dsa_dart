bool areThereDuplicatesFrequencyPointers(List<dynamic> arguments) {
  if (arguments.isEmpty) {
    return false;
  }

  int i = 0;

  for (int j = i + 1; i < arguments.length; j++) {
    if (j > arguments.length) {
      i++;
      j = i + 1;
    } else if (arguments[j] == arguments[i]) {
      return true;
    }
  }

  return false;
}

void main() {
  areThereDuplicatesFrequencyPointers([1, 2, 3, 4, 5, 6, 6, 7]);
}
