/// Useful in some algorithms
void main() {
  test([1, 2, 3, 4, 5, 6]);
  test([1, 2]);
  test([]);
}

void test(List<int> list) {
  print('Testing $list');
  final [first, ...] = list; // same as `list.first`
  print('\tfirst $first');
  final [..., last] = list; // same as `list.last`
  print('\tlast $last');
  final [firstAgain, ...rest, lastAgain] = list;
  print('\t$firstAgain $rest $lastAgain');
  final [one, ...others] = list;
  print('\t$one $others');
}
