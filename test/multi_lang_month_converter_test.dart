import 'package:multi_lang_month_converter/multi_lang_month_converter.dart';
import 'package:test/test.dart';

void main() {
  group("Test month translations", () {
    final converter = MultiLangMonthConverter();

    test('Convert month number to Uzbek', () {
      expect(converter.convert(1, 'uz'), 'Yanvar');
      expect(converter.convert(12, 'uz'), 'Dekabr');
    });

    test('Convert month number to Russian', () {
      expect(converter.convert(1, 'ru'), 'Январь');
      expect(converter.convert(12, 'ru'), 'Декабрь');
    });

    test('Convert month number to English', () {
      expect(converter.convert(1, 'en'), 'January');
      expect(converter.convert(12, 'en'), 'December');
    });

    test('Invalid month number', () {
      expect(() => converter.convert(0, 'en'), throwsArgumentError);
      expect(() => converter.convert(13, 'en'), throwsArgumentError);
    });

    test('Invalid language code', () {
      expect(() => converter.convert(1, 'fr'), throwsArgumentError);
    });
  });
}
