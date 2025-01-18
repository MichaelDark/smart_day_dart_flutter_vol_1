import 'package:characters/characters.dart';

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
