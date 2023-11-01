String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }
  String longest = "none";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest != "none" ? longest : "none";
}

bool isPalindrome(String s) {
  int i = 0;
  int j = s.length - 1;
  while (i < j) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}
