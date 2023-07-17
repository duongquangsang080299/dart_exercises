// A class called 'Diamond'
// Variable 'alphabet' which is a string that contains all the uppercase letters
class Diamond {
  // Variable 'alphabet' which is a string that contains all the uppercase letters
  String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  // Method called 'row' which takes a parameter 'letter' of type string and return a list of String.
  List<String> rows(String letter) {
    // Find the index of the "letter" in the 'alphabet' string using the 'indexOf' method.
    int letterIndex = alphabet.indexOf(letter);
    // Check `letterIndex` is greater than 0.If it is, it means the letter is not 'A', so the `rowLength` is set to 1.
    // If the `letterIndex` is 0, it means the letter is 'A', so the `rowLength` is set to `letterIndex + 3`.
    int rowLength = letterIndex > 0 ? 1 : letterIndex + 3;
    int rowCount = 0;
    // It initializes an empty List called "rows" to store Strings.
    List<String> rows = [];
    // While loop that executes as long as the condition
    while (rowCount < (letterIndex + 1)) {
      // Adding a new row to a list called 'rows' by calling the 'row()' function
      // Passing it the 'rowCount' amd 'rowLengh' as argument
      rows.add(row(rowCount, rowLength));
      rowCount++;
    }
    List<String> reversed = rows.reversed.skip(1).toList();
    return rows + reversed;
  }

  String row(int letterIndex, int rowLength) {
    if (letterIndex == 0) {
      return "A";
    }
    int outerSpace = ((rowLength - 3) / 2) as int;
    return alphabet[letterIndex].padLeft(outerSpace).padRight(letterIndex + 1) +
        alphabet[letterIndex].padRight(outerSpace);
  }
}
