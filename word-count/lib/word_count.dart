class WordCount {
  // lists,maps,regular expressions,loops
  // given a phrase,count the occurrences of each word in that phrase

  Map<String, int> countWords(String s) {
    RegExp regexp = RegExp(r"\d+|[a-z]+('[a-z]+)?", caseSensitive: false);
    //finds all matches of Regular Expressions in a string
    /* r:rawsting
       [a-z]+:search for least one letter
       (‘[a-z]+)? → none or one match of a word that starts with an apostrophe should be looked for
       |\d+ → either the left side only words is true, or a number containing one or several digits is true
*/

    Map<String, int> result = Map();
    regexp.allMatches(s).forEach((m) => result
        .update(m.group(0).toLowerCase(), (i) => i + 1, ifAbsent: () => 1));
    return result;
    //update the values for the provied key
  }
}
