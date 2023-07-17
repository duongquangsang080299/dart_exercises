class CollatzConjecture {
  int steps(int num) {
    int count = 0;
    while (num != 1) {
      if (num % 2 == 0) {
        num = (num / 2) as int;
      } else {
        num = (num * 3) + 1;
      }
      count += 1;
    }
    return count;
  }
}
