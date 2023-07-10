class SpaceAge {
  //floating point numbers,intergers,math
//give an age in seconds,calculate how old someone is in terms of a given planet's solar year

  Map<String, double> pa = {
    //A collection of key/value pairs from which you retrieve a value using its associated key
    'Mercury': 0.2408467,
    'Venus': 0.61519726,
    'Earth': 1.0,
    'Mars': 1.8808158,
    'Jupiter': 11.862615,
    'Saturn': 29.447498,
    'Uranus': 84.016846,
    'Neptune': 164.79132
  };

  double age({String planet, int seconds}) {
    return double.parse((seconds / 31557600 / pa[planet]).toStringAsFixed(2));
    //floating point number also known as double.these number have digits after the decimal point.
    //toStringAsFixed :This method helps us convert number,preferably double,to a string and additionally
  }
}
