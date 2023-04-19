class Triangle {
  List<num> sides = [];
  String detectTriangle(num s1, num s2, num s3) {
    sides = [s1, s2, s3];
    sides.sort();

    sides.forEach((e) {
      if (e < 1) {
        throw Exception();
      }
    });

    if (sides[0] + sides[1] <= sides[2]) {
      throw Exception('this is inequal triangle');
    }

    if (sides[0] == sides[1] && sides[0] == sides[2]) {
      return "segitiga sama sisi";
    }
    
    if (sides[0] == sides[1] || sides[1] == sides[2]) {
      return "Segitiga sama kaki";
    }
    return "Segitiga sembarang";
  }
}
