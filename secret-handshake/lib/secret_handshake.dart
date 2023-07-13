// Class called SecretHandshake that has a method called commands.
class SecretHandshake {
  // The commands method takes an integer value as input and returns a list of string
  List<String> commands(int code) {
    // Inside the commands method, there is an empty list called secretHandshake that will store the secret handshake commands.
    List<String> secretHandshake = [];
    // Check if the code bit 1 is equal to 1 and then check f the least significant bit of the value is set
    // If it is,the string 'wink' is add to the secrtHandsahke list.
    if (code & 1 == 1) secretHandshake.add('wink');
    // Netx, check if the code bit 2 is equal to 2 and then check f the least significant bit of the value is set
    // If it is,the string 'double blink' is add to the secrtHandsahke list.
    if (code & 2 == 2) secretHandshake.add('double blink');
    // Netx, check if the code bit 4 is equal to 4 and then check f the least significant bit of the value is set
    // If it is,the string 'close your eyes' blink' is add to the secrtHandsahke list.
    if (code & 4 == 4) secretHandshake.add('close your eyes');
    // Netx, check if the code bit 8 is equal to 8 and then check f the least significant bit of the value is set
    // If it is,the string 'jump' is add to the secrtHandsahke list.
    if (code & 8 == 8) secretHandshake.add('jump');
    if (code & 16 == 16) secretHandshake.reversed.toList();
    //return the secretHandshakes as the result of the command method
    return secretHandshake;
  }
}
