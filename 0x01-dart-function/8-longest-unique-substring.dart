String longestUniqueSubstring(String str) {
  Map<String, int> seen = {}; // To store last seen index of each char
  int start = 0; // Start index of current window
  int maxLen = 0; // Length of longest unique substring
  int maxStart = 0; // Start index of longest substring

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // TODO: if char has already been seen AND it's inside the current window
    // update `start` to one position after the last seen index of that char
    if (seen.containsKey(char) && seen[char]! >= start) {
      start = seen[char]! + 1;
    }

    // TODO: store/update the current char's index
    seen[char] = i;

    // TODO: if current window length is greater than maxLen
    // update maxLen and maxStart
    int windowLen = i - start + 1;
    if (windowLen > maxLen) {
      maxLen = windowLen;
      maxStart = start;
    }
  }

  // TODO: return substring from maxStart with length maxLen
  String longestsubstring = str.substring(maxStart, maxStart + maxLen);
  return longestsubstring;
}
