import 'dart:math';

/*void main() {
  print(Darts().score(0.7, 0.7));
}*/

class Darts {
  /*
  * outside
  * outer circle  1 pt
  * middle circle 5 pt
  * inner circle 10 pt
  *
  *
  * 10 size dartboard  middle is 10-5 =5
  * inner circle 10 pt
  *
  *
  * */
  Point referencePoint = Point(0, 0);

  int score(num x, num y) {
    //    if (x > 10 && y > 10) return 0;
    Point dartPosition = Point(x, y);

    if (dartPosition.distanceTo(referencePoint) <= 1) return 10;
    if (dartPosition.distanceTo(referencePoint) <= 5) return 5;
    if (dartPosition.distanceTo(referencePoint) <= 10) return 1;
    return 0;
  }
}
