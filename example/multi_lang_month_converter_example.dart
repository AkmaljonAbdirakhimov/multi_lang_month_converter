import 'package:multi_lang_month_converter/multi_lang_month_converter.dart';

void main() {
  final converter = MultiLangMonthConverter();

  print(converter.convert(1, 'uz')); // Yanvar
  print(converter.convert(1, 'ru')); // Январь
  print(converter.convert(1, 'en')); // January
}
