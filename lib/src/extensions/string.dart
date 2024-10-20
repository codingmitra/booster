/// Extensions for [String]
extension StringExtension on String {
  /// Capitalizes the first character of each word in the string.
  ///
  /// Example:
  /// ```dart
  /// 'hello world'.toCapitalize // 'Hello World'
  /// ```
  String get toCapitalize {
    return trim()
        .toLowerCase()
        .split(RegExp(r'\s+'))
        .map((w) => isEmpty ? '' : "${this[0].toUpperCase()}${substring(1)}")
        .join(' ');
  }

  /// Converts the string to an integer if possible.
  ///
  /// Example:
  /// ```dart
  /// '123'.toInt // 123
  /// 'abc'.toInt // null
  /// ```
  int? get toInt => int.tryParse(this);

  /// Converts the string to a double if possible.
  ///
  /// Example:
  /// ```dart
  /// '123.45'.toDouble() // 123.45
  /// 'abc'.toDouble() // null
  /// ```
  double? get toDouble => double.tryParse(this);
}
