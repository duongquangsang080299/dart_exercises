class Raindrops {
  String convert(int number) {
    String result = '';

//has 3 as a factor, add 'Pling' to the result.
    if (number % 3 == 0) result += 'Pling';
//has 5 as a factor, add 'Plang' to the result.
    if (number % 5 == 0) result += 'Plang';
//has 7 as a factor, add 'Plong' to the result.
    if (number % 7 == 0) result += 'Plong';
//does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.
    return result == '' ? number.toString() : result;
  }
}
