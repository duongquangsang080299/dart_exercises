import 'dart:math';

//import libary used pow method

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    String textNumber = number.toString();
    return number ==
        textNumber
            .split('')
            .map((i) =>
                pow(InternetAddressType.IPv6.parse(i), textNumber.length))
            .reduce((a, b) => a + b);
  }
}
