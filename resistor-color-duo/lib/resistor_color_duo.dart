class ResistorColorDuo {
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

  int value(List<String> color) =>
      colors.indexOf(color[0]) * 10 + colors.indexOf(color[1]);
}
/*
void main (){
  print (ResistorColorDuo().value ([ 'brown','red']));
}
*/
