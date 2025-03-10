// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false



/**
 * Determines if a given string is a palindrome.
 * 
 * A palindrome is a string that reads the same forward and backward.
 * This function includes spaces and punctuation when checking if the string is a palindrome.
 * 
 * @param text The string to check
 * @return true if the string is a palindrome, false otherwise
 */
bool palindrome(String text) {
  // Variable to track if the string is a palindrome
  // Initially null, will be set to true or false during iteration
  bool? isPalindrome;
  
  // Loop through the first half of the string (including the middle character for odd-length strings)
  for (int i = 0; i <= text.length / 2; i++) {
    // Compare character at position i with its corresponding character from the end
    // If they match AND isPalindrome isn't already false, set isPalindrome to true
    // Otherwise, set isPalindrome to false
    text[i] == text[text.length - 1 - i] && isPalindrome != false
        ? isPalindrome = true
        : isPalindrome = false;
  }
  
  // Return the palindrome status, defaulting to false if isPalindrome is still null
  // (This would happen for an empty string)
  return isPalindrome ?? false;
}
