import 'package:characters/characters.dart';

/// Do not forget about runes vs characters when processing strings
/// Use wisely (applies to all tips & tricks)
void main() {
  const String text = '🇺🇦';
  print('Runes:');
  for (final rune in text.runes) {
    print('$rune');
  }

  // Prints ISO 3166 (Unicode ¯\_(ツ)_/¯)
  print('Runes (string wrapped):');
  for (final rune in text.runes) {
    print(String.fromCharCode(rune));
  }

  print('Characters:');
  for (final character in text.characters) {
    print(character);
  }
}
