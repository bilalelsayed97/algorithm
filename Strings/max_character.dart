void main() {
  print(maxChar('abc1qq111111111'));
}

// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

/// Returns the most frequently occurring character in a string.
///
/// This function analyzes a given string and determines which character
/// appears most often within it.
///
/// Returns:
///   The character that appears most frequently in the input string
///
/// Examples:
///   maxChar("abcccccccd") returns "c"
///   maxChar("apple 1231111") returns "1"

String maxChar(String text) {
  // Split the string into individual characters
  List<String> charLits = text.split('');

  // Create a map to store character frequencies
  Map<String, int> charMap = {};

  // Variables to track the most frequent character and its count
  String maxChar = '';
  int maxCharValue = 0;

  // Iterate through each character in the string
  for (var char in charLits) {
    if (charMap[char] != null) {
      // If character exists in map, increment its count
      charMap[char] = charMap[char]! + 1;

      // Check if this character now has the highest count
      if (charMap[char]! > maxCharValue) {
        maxCharValue = charMap[char]!;
        maxChar = char;
      }
    } else {
      // First occurrence of this character, add to map with count 1
      charMap.addAll({char: 1});

      // If this is the first character processed, set it as the initial max
      if (maxChar == '' && maxCharValue == 0) {
        maxChar = char;
        maxCharValue = 1;
      }
    }
  }

  // Return the most frequent character
  return maxChar;
}
