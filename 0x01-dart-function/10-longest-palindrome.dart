String longestPalindrome(String s) {
  if (s.length < 3) return 'none';

  int start = 0, end = 0;
  for (int i = 0; i < s.length; i++) {
    int len1 = expandAroundCenter(s, i, i);
    int len2 = expandAroundCenter(s, i, i + 1);
    int len = len1 > len2 ? len1 : len2;

    if (len > end - start) {
      start = i - (len - 1) ~/ 2;
      end = i + len ~/ 2;
    }
  }

  return end - start + 1 < 3 ? 'none' : s.substring(start, end + 1);
}

int expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  return right - left - 1;
}
