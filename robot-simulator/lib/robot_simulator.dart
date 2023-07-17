import 'orientation.dart';
import 'position.dart';

// Create class has three properties,'orientation' and 'position'.
class Robot {
  // 'orieantation_len' is a constant variable that holds the length of the 'Orientation.values' list.
  //  Final is means list value cannot be changed once assigned
  final int orientation_len = Orientation.values.length;
  //  `orientation` is a variable that holds the current orientation of the robot.
  Orientation orientation;
  //  `position` is a variable that holds the current position of the robot.
  Position position;
  // `position` and `orientation` properties with the values passed as arguments to the constructor.
  Robot(this.position, this.orientation);
  // A function called `move` that takes a string parameter called `instructions`.
  // Using the `split('')` method.
  // Uses the `forEach` method to iterate over each character in the array and performs a certain action based on the character.
  void move(String instructions) => instructions.split('').forEach((i) {
        // If the character is 'L', it calls the `turnLeft` method.
        if (i == 'L') {
          this.turnLeft();
          // If the character is 'R', it calls the `turnRight` method.
        } else if (i == 'R') {
          this.turnRight();
          // If the character is 'A', it calls the `advance` method.
        } else if (i == 'A') {
          this.advance();
        }
      });
  //  Defines method 'turnLeft()'
  void turnLeft() {
    this.orientation = Orientation.values[
        (orientation_len + this.orientation.index - 1) % orientation_len];
  }

  //  Defines method 'turnRight()'
  void turnRight() {
    this.orientation =
        Orientation.values[(this.orientation.index + 1) % orientation_len];
  }

  //  Defines method 'advance()'
  void advance() {
    if (this.orientation == Orientation.east) {
      this.position.x++;
    } else if (this.orientation == Orientation.west) {
      this.position.x--;
    } else if (this.orientation == Orientation.north) {
      this.position.y++;
    } else if (this.orientation == Orientation.south) {
      this.position.y--;
    }
  }
}
