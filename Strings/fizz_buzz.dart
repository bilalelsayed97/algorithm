// --- Directions
// Write a program that console logs the numbers
// from 1 to n. But for multiples of three print
// “fizz” instead of the number and for the multiples
// of five print “buzz”. For numbers which are multiples
// of both three and five print “fizzbuzz”.
// --- Example
//   fizzBuzz(5);
//   1
//   2
//   fizz
//   4
//   buzz

List<String> fizzBuzz(int number) {
  List<String> outputList = [];
  for (int i = 1; i <= number; i++) {
    i % 3 == 0
        ? outputList.add('fizz')
        : i % 5 == 0
            ? outputList.add('buzz')
            : outputList.add('$i');
  }
  return outputList;
}
