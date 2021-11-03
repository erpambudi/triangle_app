detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];

  //versi simpel
  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  // if (sideA < 1 || sideB < 1 || sideC < 1) {
  //   throw Exception();
  // }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga Sama Sisi";
  }
}
