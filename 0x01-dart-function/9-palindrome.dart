bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  s = s.replaceAll(' ', '').toLowerCase();
  return s == s.split('').reversed.join();
}
