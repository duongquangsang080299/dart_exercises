// Class Definition for a Minesweeper game
class Minesweeper {
  // The class is named "Minesweeper" and it takes a parameter "input" in its constructor.
  Minesweeper(this.input);
  // The "input" parameter is a list of strings
  final List<String> input;
  // The class has a getter method named "annotated" which returns a list of strings
  List<String> get annotated {
    // If it is empty, it returns an empty list.
    if (input.isEmpty) return [];
    // If the "input" list is not empty, it creates a new list named "board" using the "List.generate" method
    // The length of the "board" list is equal to the length of the "input" list.
    final List<String> board = List<String>.generate(
      input.length,
      (int row) => List<String>.generate(
        input[0].length,
        (int col) => _calculateCell(row, col),
      ).join(),
    );

    return board;
  }

  // '_calculateCell'  that takes in two parameters `row` and `col`
  // Representing the row and column indices of a cell in a 2D array called 'input'
  // The method returns a 'String' value.
  String _calculateCell(int row, int col) {
    if (input[row][col] == '*') return '*';

    int count = 0;

    for (int i = row - 1; i <= row + 1; i++) {
      for (int j = col - 1; j <= col + 1; j++) {
        if (i >= 0 && i < input.length && j >= 0 && j < input[0].length) {
          if (input[i][j] == '*') count++;
        }
      }
    }

    return count == 0 ? ' ' : count.toString();
  }
}
