import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_input.dart';

void main() {
  group('detect input', () {
    test('Should throw error when there is side length less than 1', () {
      expect(() => Triangle().detectTriangle(-11, 2, 3),
          throwsA(isA<Exception>())); //test s1
      expect(() => Triangle().detectTriangle(2, -2, 3),
          throwsA(isA<Exception>())); //test s2
      expect(() => Triangle().detectTriangle(2, 2, -3),
          throwsA(isA<Exception>())); //test s3
    });

    test('should throw "segitiga sama sisi" when all side is equal', () {
      expect(Triangle().detectTriangle(2, 2, 2), "segitiga sama sisi");
      expect(Triangle().detectTriangle(5, 5, 3), isNot("segitiga sama sisi"));
    });

    test('should throw "segitiga sama kaki" when there are 2 side is equal ',
        () {
      expect(Triangle().detectTriangle(2, 3, 3), "Segitiga sama kaki");
      expect(Triangle().detectTriangle(3, 3, 4), "Segitiga sama kaki");
      expect(Triangle().detectTriangle(4, 1, 4), "Segitiga sama kaki");
    });

    test('should throw "segitiga sembarang" when no side are equal', () {
      expect(Triangle().detectTriangle(2, 4, 3), "Segitiga sembarang");
    });

    test('should throw Error when side 1 + side 2 <= side 3', () {
      expect(()=>Triangle().detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(()=> Triangle().detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
    });
  });
}
