void main() {
  test([1, 2, 3, 4, 5, 6]);
  test([1, 2]);
  test([]);
}

void test(List<int> list) {
  print('Testing $list');
  final [first, ...] = list;
  print('\tfirst $first');
  final [..., last] = list;
  print('\tlast $last');
  final [firstAgain, ...rest, lastAgain] = list;
  print('\t$firstAgain $rest $lastAgain');
}
