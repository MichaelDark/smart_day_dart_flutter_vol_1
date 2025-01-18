void main() {
  test1();
  test2();
}

void test1() {
  (int x, int y, int z) point1 = (1, 2, 3);
  (int x, int y, int z) point2 = (2, 2, 3);
  print(point1 == point2);

  (int r, int g, int b) color = (1, 2, 3);
  print(point1 == color);
}

void test2() {
  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  print(point1 == point2);

  ({int r, int g, int b}) color = (r: 1, g: 2, b: 3);
  print(point1 == color);
}
