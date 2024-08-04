import 'month_translations.dart';

class MultiLangMonthConverter {
  /// Converts the month number to the month name in the specified language.
  ///
  /// [monthNumber] should be between 1 and 12.
  /// [languageCode] should be one of 'uz', 'ru', or 'en'.
  ///
  /// Returns the month name in the specified language.
  /// Throws an [ArgumentError] if the month number or language code is invalid.
  String convert(int monthNumber, String languageCode) {
    if (monthNumber < 1 || monthNumber > 12) {
      throw ArgumentError('Month number must be between 1 and 12.');
    }

    if (!monthTranslations.containsKey(languageCode)) {
      throw ArgumentError('Invalid language code. Use "uz", "ru", or "en".');
    }

    return monthTranslations[languageCode]![monthNumber - 1];
  }
}
