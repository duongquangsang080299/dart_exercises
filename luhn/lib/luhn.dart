// Class called "Luhn" that contains a method called "vaild"
// The method check number is vailid according to the Luhn algorithm
class Luhn {
  // Method takes a String parameter called "number"
  bool valid(String number) {
    // Removes any space from the given number and assigns the result to the variable "cleanNumber"
    String cleanNumber = number.replaceAll(' ', '');

    // Check length is less than 2.
    if (cleanNumber.length < 2) {
      // If number too short so method return "false"
      return false;

      // Check any non-digit character
    } else if (cleanNumber.contains(RegExp(r'\D'))) {
      // If 'cleanNumber' contains any non-digit character so method return "false"
      return false;
    }

    // A list of numbers obtained from a string called 'cleanNumber'.
    // 'cleanNumber' reversing the order,using the 'int.parse' function,converting the resulting iterable to a list.
    List<int> numberList =
        cleanNumber.split("").reversed.map(int.parse).toList();
    // Using a for loop
    for (int i = 1; i < numberList.length; i += 2) {
      numberList[i] =
          numberList[i] * 2 > 9 ? numberList[i] * 2 - 9 : numberList[i] * 2;
    }
    return numberList.fold(0, (int value, element) => value + element) % 10 ==
        0;
  }
}
