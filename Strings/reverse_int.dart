// -- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// -- Examples
// reverseInt (15) === 51
// reverseInt(981) === 189
// reverseInt(500) === 5
//
reverseInt(-15) === -51
// reverseInt(-90) === -9


/**
 * Reverses the digits of an integer while preserving its sign.
 * 
 * This function takes an integer, converts it to a string, reverses the characters,
 * then converts it back to an integer with the original sign preserved.
 * 
 * @param number The integer to be reversed
 */


void reverseInt(int number) {
  // Determine if the number is negative (signNumber will be -1) or positive (signNumber will be 1)
  int signNumber = number.isNegative ? -1 : 1;
  
  // Step-by-step process to reverse the digits:
  // 1. Take the absolute value of the number to handle negative numbers
  // 2. Convert the number to a string
  // 3. Split the string into an array of characters
  // 4. Use reduce to build a new string in reverse order
  //    (each new character is added to the front of the accumulator)
  String numberString = number
      .abs()
      .toString()
      .split('')
      .reduce((element, char) => char + element);
  
  // Convert the reversed string back to an integer
  // Then multiply by the sign value to restore the original sign
  int intNumber = int.parse(numberString) * signNumber;
  
  // Print the result
  print(intNumber.toString()); // -5
}
