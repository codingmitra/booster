import 'package:flutter/widgets.dart';

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

  /// Converts a CSS hex string to a [Color].
  /// The length of hex string must be either 3, 4, 6, or 8 exclusive of the optional # character.
  ///
  /// Example:
  /// ```dart
  /// '#123'.toColor // Color(0xff112233)
  /// '123'.toColor // Color(0xff112233)
  /// '123a'.toColor // Color(0xaa112233)
  /// '#bada55'.toColor // Color(0xffbada55)
  /// 'bada55'.toColor // Color(0xffbada55)
  /// 'bada55dd'.toColor // Color(0xddbada55)
  /// ```
  Color get toColor {
    var hex = replaceFirst('#', '');
    var rgb = '000000';
    var a = '00';

    if (hex.length == 3) {
      rgb = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
      a = 'ff';
    } else if (hex.length == 4) {
      rgb = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
      a = '${hex[3]}${hex[3]}';
    } else if (hex.length == 6) {
      rgb = hex;
      a = 'ff';
    } else if (hex.length == 8) {
      rgb = hex.substring(0, 6);
      a = hex.substring(6, 8);
    } else {
      throw Exception(
          'Hex string must be of length 3, 4, 6, or 8 exclusive of #');
    }

    var color = int.tryParse('$a$rgb', radix: 16);

    if (color == null) {
      throw Exception('Invalid hex color string');
    }

    return Color(color);
  }
}
