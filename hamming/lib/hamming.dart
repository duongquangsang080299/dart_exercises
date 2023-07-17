class Hamming {
  int distance(String strandL, String strandR) {
    //one of the strands are empty
    if (strandL.isEmpty ^ strandR.isEmpty) {
      throw ArgumentError('no strand must be empty');
    }

    if (strandL.length != strandR.length) {
      throw ArgumentError('left and right strands must be of equal length');
    }
    return strandL
        .slip('')
        .asMap()
        .entries
        .where((e) => e.value != strandR.slip('')[e.key])
        .length;
  }
}
