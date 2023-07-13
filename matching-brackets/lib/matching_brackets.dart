// Create class called 'MatchingBrackets'
class MatchingBrackets {
  // A method called 'isPaired' which takes a 'String' parameter and return boolean value
  bool isPaired(String value) {
    // Create regular experssion 're' using 'RegExp' class.
    RegExp re = new RegExp(r'\(\)|\{\}|\[\]');
    // Creates a new `String` variable `newVal` and assigns it the value of `value` after removing any characters that are not brackets.
    String newVal = value.replaceAll(new RegExp(r'[^\(\)\[\]\{\}]'), "");
    while (newVal.contains(re)) {
      newVal = newVal.replaceAll(re, "");
    }
    return newVal.isEmpty;
  }
}
