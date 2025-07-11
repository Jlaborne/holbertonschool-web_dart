bool isPalindrome(String s) {
  if (s.length < 3) return false;

  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      return false;
    }
  }

  return true;
}

String longestPalindrome(String s) {
  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j < s.length; j++) {
      String sub = s.substring(i, j + 1);

      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }

  if (longest == "") {
    return "none";
  }

  return longest;
}
