// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

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
