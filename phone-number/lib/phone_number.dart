class PhoneNumber {
  // Regular experssion call invailidChar
  RegExp invalidChar = RegExp(r'[()\s-.+]');
  // Regular experssion call letter
  RegExp letters = RegExp(r'[a-zA-Z]');
  RegExp punctuations = RegExp(r'@:!');
// A method called clean and get result as a string
  String clean(String phoneNumber) {
    // Replace the phone number and then return the phone number
    phoneNumber = phoneNumber.replaceAll(invalidChar, '');
    // Check if the phone number is smaller than 10 and let's run test
    // Let's check if it's correct
    if (phoneNumber.length < 10)
      throw FormatException("incorrect number of digits");
    // Check if the phone number is more than 11 digits and let's run test
    // Let's check if it's correct
    if (phoneNumber.length > 11) throw FormatException("more than 11 digits");
    // Check phone number letter not permitted and let's run test
    if (phoneNumber.contains(letters))
      throw FormatException("letters not permitted");
    // Check phone number punctuations not permitted and let's run test
    if (phoneNumber.contains(punctuations))
      throw FormatException("punctuations not permitted");
    // Check phone number arae code cannot start with zero and let's run test
    if (phoneNumber.length == 10) {
      if (phoneNumber[0].contains('0')) {
        throw FormatException("arae code cannot start with zero");
      }
      // Check phone number arae code cannot start with one and let's run test
      if (phoneNumber[0].contains('1')) {
        throw FormatException("area code cannot start with one");
      }
      // Check phone number exchange code cannot start with zero and let's run test
      if (phoneNumber[3].contains('0')) {
        throw FormatException("exchange code cannot start with zero");
      }
      if (phoneNumber[3].contains('1')) {
        throw FormatException("exchange code cannot start with zero");
      }
      return phoneNumber;
    }
  }
}
