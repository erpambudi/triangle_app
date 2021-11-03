import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group('Detect the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });

    test('Should return "Segitiga Sama Sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 3), "Segitiga Sama Sisi");
      expect(detectTriangle(1, 1, 2), isNot("Segitiga Sama Sisi"));
    });
  });
}
