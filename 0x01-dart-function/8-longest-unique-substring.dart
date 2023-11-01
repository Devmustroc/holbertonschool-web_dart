String longestUniqueSubstring(String str) {
  int currentLength = 0;
  int start = 0;
  int maxStart = 0;
  Map<String, int> lastIndex = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (lastIndex.containsKey(currentChar) && lastIndex[currentChar] != null && lastIndex[currentChar]! >= start) {
      start = lastIndex[currentChar]! + 1;
    }

    if (i - start + 1 > currentLength) {
      currentLength = i - start + 1;
      maxStart = start;
    }

    lastIndex[currentChar] = i;
  }

  return str.substring(maxStart, maxStart + currentLength);
}
