// import 'package:flutter/widgets.dart';

// /// Extension for [Color]
// extension ColorExtension on Color {
//   /// Mixes this color with another color
//   ///
//   /// ```dart
//   /// Color(0xFF00FF00).mixWith(Color(0xFF0000FF))
//   /// ```
//   Color mixWith(List<Color> colors) {
//     if (colors.isEmpty) return this;

//     var r = 0;
//     var g = 0;
//     var b = 0;
//     var a = 0;

//     for (var color in colors) {
//       if (this == color) return this;

//       r = (red + color.red);
//       g = (green + color.green);
//       b = (blue + color.blue);
//       a = (alpha + color.alpha);
//     }

//     return Color.fromARGB(a ~/ colors.length, r ~/ colors.length, g ~/ colors.length, b ~/ colors.length);
//   }
// }
