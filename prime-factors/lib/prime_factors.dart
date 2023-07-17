// Program compute the prime factors of a given natural number.
// Create a class properties of primeFactors
class PrimeFactors {
  // list factors have int value
  List<int> factors(int value) {
    List<int> factors = [];
    // find divisors starting with 2
    for (var i = 2; i <= value; i++) {
      // While i divides value, print i and divide value
      while (value % i == 0) {
        value ~/= i;
        factors.add(i);
      }
    }

    return factors;
  }
}
