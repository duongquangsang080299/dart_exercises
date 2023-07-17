class ResistorColor {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int colorCode(String code) {
    return colors.indexOf(code);
  }
}

/* void main() {
  var rc = ResistorColor();
  print(rc.colorCode('blue'));
}*/
