/*void main() {
  print(Isogram().isIsogram('up-to-date'));
}
*/
class Isogram {
  bool isIsogram(String word) {
    word = word.toLowerCase().replaceAll('-', '').replaceAll(' ', '');
    return word.split('').toSet().length == word.split('').length;
  }
}
