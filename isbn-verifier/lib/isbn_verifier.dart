// Function that checks the validity of an ISBN string
bool isValid(String isbnString) {
  //the function intializes a variable 'i' with the value 10.
  int i = 10;
  //remove all hyphens
  isbnString = isbnString.replaceAll("-", "");
  //test if the first 9 digits are int + last digit int or X
  if (!isbnString.contains(RegExp(r'^\{9}(\d|X)$'))) return false;
  // test if the isbn is valid and return true othewise false
  return isbnString
              .split('')
              .fold(0, (pr, cu) => pr + i-- * (int.tryParse(cu) ?? 10)) %
          11 ==
      0;
}
