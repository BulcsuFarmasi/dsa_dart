import 'dart:math';

int findLongestSubstring(String letters) {
  int longestSubstring = 0;
  int start = 0;
  int end = 0;
  Set<String> lettersSet = Set<String>();

  while(start < letters.length) {
    if (end == letters.length || lettersSet.contains(letters[end])) {
      final length = end - start;
      longestSubstring = (length > longestSubstring) ? length : longestSubstring;
      lettersSet.clear();
      start++;
      end = start;
    } else {
      lettersSet.add(letters[end]);
      end++;
    }
  }

  return longestSubstring;
}

void main() {
  print(findLongestSubstring('galgadot'));
}