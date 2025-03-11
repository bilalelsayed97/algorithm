// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"


// This function takes a string and returns the character that appears most frequently.
// It uses a Map (charMap) to keep track of the count of each character
// and keeps track of the character that has the highest frequency as we go.
String? maxChar(String text) {
  // Split the input string into a list of individual characters.
  List<String> charList = text.split('');
  
  // A map to store each character and how many times it appears.
  Map<String, int> charMap = {};
  
  // Variables to keep track of the character with the highest frequency found so far.
  String? maxChar;
  int maxCharValue = 0;

  // Loop through each character in the list.
  for (var char in charList) {
    // If we have seen this character before, increment its count.
    if (charMap.containsKey(char)) {
      var currentValue = charMap[char];
      charMap[char] = currentValue! + 1;
      
      // Check if the current character's new frequency is higher than our current max frequency.
      // If so, update maxChar and maxCharValue.
      if (charMap[char]! > maxCharValue) {
        maxCharValue = charMap[char]!;
        maxChar = char;
      }
    } else {
      // If it's the first time we see this character, set its count to 1.
      charMap[char] = 1;
      
      // If this is the first character in the map, it's automatically our max.
      if (maxCharValue == 0) {
        maxCharValue = 1;
        maxChar = char;
      }
    }
  }

  // Return the character with the highest frequency.
  return maxChar;
}
