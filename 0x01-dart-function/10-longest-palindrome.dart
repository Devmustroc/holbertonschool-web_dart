String longestPalindrome(String s) {
  bool isPalindrome(String str) {
    int start = 0;
    int end = str.length - 1;
    while (start < end) {
      if (str[start] != str[end]) {
        return false;
      }
      start++;
      end--;
    }
    return true;
  }

  int maxLength = 0;
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > maxLength) {
        maxLength = sub.length;
        longest = sub;
      }
    }
  }

  if (s.length < 0) {
    return "none";
  }

  return longest;
}
