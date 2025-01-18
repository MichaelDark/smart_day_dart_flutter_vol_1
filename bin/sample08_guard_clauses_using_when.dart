void main() {
  test([1, 2, 3, 4, 5, 6]);
  test([1, 2]);
  test([]);
  test('John');
}

void test(dynamic parameter) {
  // Switch statement:
  switch (parameter) {
    case String text when text == 'John':
      print(text);
  }

  // Switch expression:
  final value = switch (parameter) {
    String text when text == 'John' => 'His name is John!',
    _ => 'His name is unknown',
  };
  print(value);

  // If-case statement:
  if (parameter case String text when text == 'John') {
    print(text);
  }
}
