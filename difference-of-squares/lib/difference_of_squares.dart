class DifferenceOfSquares {
  // Define a class called "DifferenceOfSquare"

  // Inside the class, create a static method called "difference" that takes an integer n as input and returns an integer as the output.
  //
  int squareOfSum(int n) =>
      pow(List<int>.generate(n, (i) => i + 1).reduce((a, b) => a + b), 2);
  int sumOfSquares(int n) =>
      List<int>.generate(n, (i) => pow(i + 1, 2)).reduce((a, b) => a + b);
  int differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);
}
