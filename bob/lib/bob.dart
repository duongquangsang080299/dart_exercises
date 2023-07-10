/*
Bob bob = Bob();

class Bob {
  String response(String saying) {
    if ((saying.trim() == saying.toUpperCase() &&saying.contains(RegExp(r'[A-Z]')))
         && saying.trim().endsWith("?")) {
      bob = YandQ();
    }
    else if (saying.trim() == saying.toUpperCase() &&
        saying.contains(RegExp(r'[A-Z]'))) {
      bob = Yell();
    }
    else if (saying.trim().endsWith("?")) {
      bob = Question();
    }
    else if (saying.trim().isEmpty) {
      bob = Nothing();
    }
    else {
      bob = Else();
    }
    return bob.response(saying);
  }
}

class Question extends Bob {
  @override
  String response(String saying) {
    return "Sure.";
  }
}

class Yell extends Bob {
  @override
  String response(String saying) {
    return "Whoa, chill out!";
  }
}

class YandQ extends Bob {
  @override
  String response(String saying) {
    return "Calm down, I know what I'm doing!";
  }
}

class Nothing extends Bob {
  @override
  String response(String saying) {
    return "Fine. Be that way!";
  }
}

class Else extends Bob {
  @override
  String response(String saying) {
    return "Whatever.";
  }
} */

//Solution using polymorphism

class Bob {
  //pattern recognition,polymorphism
  //bob is a lackadaisical teenager. In conversation,his responses are very limited.

  // solution using Extension method
  String response(String saying) => saying.isQuestion && saying.isYelling
      ? "Calm down, I know what I'm doing!"
      : saying.isQuestion
          ? 'Sure.'
          : saying.isYelling
              ? 'Whoa, chill out!'
              : saying.isNothing
                  ? 'Fine. Be that way!'
                  : 'Whatever.';
}

extension on String {
  bool get isQuestion => trim().endsWith("?");
  bool get isYelling =>
      this == this.toUpperCase() && this != this.toLowerCase();
  bool get isNothing => trim().isEmpty;
}
