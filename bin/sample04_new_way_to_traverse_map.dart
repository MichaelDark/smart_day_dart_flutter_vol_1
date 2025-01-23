/// Useful to deconstruct any object for iteration
void main() {
  final map = {'name': 'John', 'surname': 'Doe'};

  // old
  for (final entry in map.entries) {
    print('${entry.key} has value ${entry.value}');
  }

  // new, using object destructing
  for (final MapEntry(key: id, :value) in map.entries) {
    print('$id has value $value');
  }
}
