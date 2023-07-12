// Program determine if a triangle is equilateral, isosceles, or scalene.
// Create a class properties of triangle
class Triangle {
  // isTriangle() method of Triangle class
  // Function triangle return bool when fill a b c variable
  bool isTriangle(double a, double b, double c) =>
      a > 0 && b > 0 && c > 0 && a + b >= c && b + c >= a && a + c >= b;
  // Function check isosceles triangle
  bool isosceles(double a, double b, double c) =>
      isTriangle(a, b, c) && a == b || a == c || b == c;
  // Function check equilateral triangle
  bool equilateral(double a, double b, double c) =>
      isTriangle(a, b, c) && a == b && a == c;
  // Function check scalene triangle
  bool scalene(double a, double b, double c) =>
      isTriangle(a, b, c) && a != b && a != c && b != c;
}
