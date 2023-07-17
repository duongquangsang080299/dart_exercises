/*void main (){
  print(Acronym().abbreviate('Ruby on Rails'));
}*/

class Acronym {
  String abbreviate(String sentence) {
    return sentence
        .toUpperCase()
        .split(RegExp(r"[_,-]+"))
        .map((word) => word[0])
        .join();
  }
}
