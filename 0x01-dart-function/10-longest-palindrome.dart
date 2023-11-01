bool isPalindrome(String s) {
  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  if (longest == "none") {
    return "none";
  }

  return longest;
}
