import 'package:locale_emoji/locale_emoji.dart';

void main() {
  print(getFlagEmoji(languageCode: 'uk'));
  print(getFlagEmoji(languageCode: 'en', countryCode: 'US'));
  print(getFlagEmoji(languageCode: 'en', countryCode: 'GB'));
}
