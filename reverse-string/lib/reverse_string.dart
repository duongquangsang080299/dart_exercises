/*void main() {
  print (reverse('robot'));
  
}*/

String reverse(String word) {
  return word.split('').reversed.join();
  //using the `split()` method, and then reversing the order of elements.
}
