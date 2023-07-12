// Program figure out if a sentence is a pangram
// Create a class properties of pangram
class Pangram {
  // isPangram() method of Pangram class
  // Function pangram return bool when fill the parameter string
  bool isPangram(String string) =>
      string
          // convert to lower case
          .toLowerCase()
          // remove all non-alphabetic characters from the string
          .replaceAll(new RegExp(r"[^a-z]"), "")
          //split [to create an array]
          .split("")
          // use toSet() remove duplicates and count the number of unique letters
          .toSet()
          // if the number of unique letters is 26,it is a pangram
          .length ==
      26;
}
