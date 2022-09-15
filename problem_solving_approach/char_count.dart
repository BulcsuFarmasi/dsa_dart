Map<String, int> charCount(String str) {
  final result = <String, int>{};
  for (int i = 0; i < str.length; i++) {
    final char = str[i].toLowerCase();
    if (RegExp(r'[a-z0-9]').hasMatch(char)) {
      if (result.containsKey(char)) {
        result[char] = result[char]! + 1;
      } else {
        result[char] = 1;
      }
    }
  }
  return result;
}

void main() {
  print(charCount("Twelve o'Clock"));
}
