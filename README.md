# Multi Lang Month Converter

A Dart package to convert month numbers to names in Uzbek, Russian, and English.

## Features

- Converts month numbers (1-12) to month names in Uzbek, Russian, and English.

## Installation

To use this package, add `multi_lang_month_converter` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  multi_lang_month_converter: ^1.0.0
```

- Then run dart pub get to install the package.

## Usage
- Here is an example of how to use the MonthConverter class:

```dart
import 'package:multi_lang_month_converter/month_converter.dart';

void main() {
  final converter = MonthConverter();

  print(converter.convert(1, 'uz')); // Yanvar
  print(converter.convert(1, 'ru')); // Январь
  print(converter.convert(1, 'en')); // January
}
```

## API MonthConverter
```String convert(int monthNumber, String languageCode)```

Converts the month number to the month name in the specified language.

```monthNumber```: The month number (1-12).

```languageCode```: The language code ('uz', 'ru', 'en').
Returns the month name in the specified language. 

Throws an ArgumentError if the month number or language code is invalid.

## Contributing
Contributions are welcome! Please feel free to open a pull request or file an issue on GitHub.

## License
This project is licensed under the MIT License - see the LICENSE file for details.