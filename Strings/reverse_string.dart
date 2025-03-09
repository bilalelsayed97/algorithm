// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'leppa'
//   reverse('hello') === 'olleh'
//   reverse('Greetings!') === '!sgniteerG'

/**
 * Reverses a string character by character.
 * 
 * This function takes a string and returns a new string with all characters
 * in reverse order.
 * 
 * Pros:
 * - Concise and readable one-liner solution
 * - Functional approach avoids explicit loops and variables
 * 
 * Cons:
 * - Less efficient for very long strings due to:
 *   -- Creating multiple intermediary strings during concatenation
 *   -- O(n²) time complexity as string concatenation is expensive
 * - May not handle Unicode surrogate pairs correctly (some emojis and special characters)
 * - Memory intensive as it creates a new array with split() and multiple string objects
 * 
 * @param text The string to be reversed
 * @return The reversed string
 */
String reverseString(String text) {
  return text.split('').reduce((element, char) => char + element);
}
