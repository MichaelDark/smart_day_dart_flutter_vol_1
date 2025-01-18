import 'package:intl/intl.dart';

/// 🔥🔥🔥
void main() {
  final wealthList = [
    const Wealth('Arnault', 233_000_000_000),
    const Wealth('Musk', 195_000_000_000),
    const Wealth('Bezos', 194_000_000_000),
    const Wealth('Gates', 128_000_000_000),
    const Wealth('Page', 114_000_000_000),
  ];
  wealthList.forEach(print);
}

class Wealth {
  final String name;
  final int dollars;

  const Wealth(this.name, this.dollars);

  @override
  String toString() {
    final numberFormat = NumberFormat.compactSimpleCurrency(name: 'EUR');
    final number = numberFormat.format(dollars);
    return '$name has $number';
  }
}
