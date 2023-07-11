class NthPrime {
  int prime(int n) {
    if (n == 0) throw new ArgumentError('There is no zeroth prime');
    int counter = 0, number = 2;
    for (; counter < n; number++) {
      if (isPrime(number)) counter++;
    }
    return --number;
  }

  bool isPrime(int number) {
    for (int start = 2; start < number; start++) {
      if (number % start == 0) return false;
    }
    return true;
  }
}
