// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

//SOLUTION[1]
bool check(String first, String secound) {
  List<String> text1 =
      first.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase().split('');

  List<String> text2 =
      secound.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase().split('');

  Map<String, int> text1Map = {};
  Map<String, int> text2Map = {};

  if (text1.length == text2.length) {
    for (var letter in text1) {
      if (text1Map.containsKey(letter)) {
        text1Map[letter] = text1Map[letter]! + 1;
      } else {
        text1Map.addAll({letter: 1});
      }
    }

    for (var letter in text2) {
      if (text2Map.containsKey(letter)) {
        text2Map[letter] = text2Map[letter]! + 1;
      } else {
        text2Map.addAll({letter: 1});
      }
    }

    for (var key in text1Map.keys) {
      if (!text2Map.containsKey(key)) return false;

      if (text1Map[key] != text2Map[key]) return false;
    }

    return true;
  } else {
    return false;
  }
}

//SOLUTION[2]
bool anagrams(String first, String secound) {
  // Convert first string to lowercase, remove non-alphabetic characters,
  // split into individual characters, and sort alphabetically
  List<String> text1 = first
      .replaceAll(RegExp(r'[^a-zA-Z]'), '')
      .toLowerCase()
      .split('')
    ..sort((a, b) => a.compareTo(b));
  
  // Convert second string to lowercase, remove non-alphabetic characters,
  // split into individual characters, and sort alphabetically
  List<String> text2 = secound
      .replaceAll(RegExp(r'[^a-zA-Z]'), '')
      .toLowerCase()
      .split('')
    ..sort((a, b) => a.compareTo(b));
  
  // If both processed strings have the same length
  if (text1.length == text2.length) {
    // Compare each character at the same position
    for (int i = 0; i < text1.length; i++) {
      // If any characters don't match, they're not anagrams
      if (text1[i] != text2[i]) return false;
    }
    // All characters match, so they are anagrams
    return true;
  } else {
    // Different lengths mean they can't be anagrams
    return false;
  }
}
