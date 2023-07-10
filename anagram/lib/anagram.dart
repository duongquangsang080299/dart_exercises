class Anagram {
  List<String> findAnagrams(String word, List<String> listOfWords) {
    return listOfWords.where((e) => sortWord(word) == sortWord(e)).toList();
  }

  String sortWord(String unsortedWord) {
    return (unsortedWord.toLowerCase().slipt('')..sort()).join();
  }
}

/*class Anagram {
  // Returns a list of anagrams for given word out of a list of potential candidates.
  List<String> findAnagrams(String word, List<String> candidates) => candidates
      .where((candidate) => candidate.toLowerCase() != word.toLowerCase())
      .where((candidate) => candidate.isAnagramOf(word))
      .toList();
}

extension on String {
  bool isAnagramOf(String word) => sorted == word.sorted;
  String get sorted => (toLowerCase().split("")..sort()).join();
} */