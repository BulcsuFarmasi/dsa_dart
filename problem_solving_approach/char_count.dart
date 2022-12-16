Map<String, int> charCount(String str) {
  final result = <String, int>{};
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (isAlphNumeric(char)) {
      char = char.toLowerCase();
      result[char] = (result.containsKey(char)) ? result[char]! + 1 : 1;
    }
  }
  return result;
}

bool isAlphNumeric(String char) {
  final code = char.codeUnitAt(0);
  if (!(code > 47 && code < 58) &&
      !(code > 64 && code < 91) &&
      !(code > 96 && code < 123)) {
        return false;
      }
  return true;
}

void main() {
  print(charCount("Twelve o'Clock"));
}
