// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

/// Divides an array into multiple subarrays of a specified length.
///
/// This function takes an array of integers and divides it into smaller chunks
/// where each chunk has a maximum size specified by the length parameter.
/// The last chunk may contain fewer elements than the specified length
/// if the array's length is not a multiple of the chunk size.

List<List<int>> chunkSize(List<int> numbersList, int length) {
  // Initialize the output list that will contain all chunks
  List<List<int>> output = [];
  
  // Initialize the current chunk being built
  List<int> currentList = [];

  // Process each number in the input list
  for (int number in numbersList) {
    // If current chunk is full, add it to output and start a new chunk
    if (currentList.length == length) {
      output.add(currentList);
      currentList = [];
    }
    
    // Add the current number to the current chunk
    currentList.add(number);
  }
  
  // Add the last chunk to the output (may be partially filled)
  // Note: This still works if the list is empty because we'd add an empty list
  if (currentList != []) {
    output.add(currentList);
  }
  
  // Return the chunked array
  return output;
}


//SOLUTION[2]

List<List<int>> chunkSize(List<int> numbersList, int length) {
  List<List<int>> output = [];

  for (int i = 0; i < numbersList.length; i += length) {
    // Get a slice (sublist) of the original list
    output.add(numbersList.sublist(
        i, i + length > numbersList.length ? numbersList.length : i + length));
  }

  return output;
}

