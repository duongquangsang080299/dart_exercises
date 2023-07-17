class SumOfMultiples {
  int sum(List<int> numbers, int limit) {
    var multiplies = 0;
    for (int i = 1; i < limit; i++) {
      if (numbers.where((e) => e > 0).any((element) => i % element == 0)) {
        multiplies += i;
      }
    }
    return multiplies;
  }
}
