void main() {
  swapV1();
  swapV2();
  swapV3();
}

void swapV1() {
  int a = 2, b = 5;
  int tmp = a;
  a = b;
  b = tmp;
  print('a: $a, b: $b');
}

void swapV2() {
  int a = 2, b = 5;
  a = b ^ a;
  b = a ^ b;
  a = a ^ b;
  print('a: $a, b: $b');
}

void swapV3() {
  int a = 2, b = 5;
  (b, a) = (a, b);
  print('a: $a, b: $b');
}
