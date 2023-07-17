// Program for pascal's triangle
// Create a class properties of pascalsTriangle
class PascalsTriangle {
  //function named "rows" that takes an integer argument "n" and returns a list of lists.
  List<List<int>> rows(int n) {
    // A variable named `result` is being declared and initialized.
    var result = <List<int>>[];
    // This loop repeats `n` times. The variable `i` keeps track of the current iteration
    for (int i = 0; i < n; i++) {
      // This list will store a row of numbers.
      var row = <int>[];
      // This loop iterates over the previous row stored in the `result` list.
      for (int j = 0; result.isNotEmpty && j < result.last.length; j++) {
        // This line generates the numbers for the current row based on the previous row.
        row.add(j == 0 ? 1 : result.last[j] + result.last[j - 1]);
      }
      result.add(row..add(1));
    }
    return result;
  }
}
