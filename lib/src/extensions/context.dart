import 'package:flutter/material.dart';

/// Extensions for [BuildContext]
extension ContextExtension on BuildContext {
  /// Returns the [ThemeData] of this [BuildContext].
  ///
  /// ```dart
  /// ThemeData theme = context.theme
  /// ```
  ThemeData get theme => Theme.of(this);

  /// Returns the [ColorScheme] of this [ThemeData].
  ///
  /// ```dart
  /// ColorScheme colorScheme = context.colorScheme
  /// ```
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Returns the [TextTheme] of this [ThemeData].
  ///
  /// ```dart
  /// TextTheme textTheme = context.textTheme
  /// ```
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the [MediaQueryData] of this [BuildContext].
  ///
  /// ```dart
  /// MediaQueryData mediaQuery = context.mediaQuery
  /// ```
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Returns the [Size] of this [MediaQueryData].
  ///
  /// ```dart
  /// Size size = context.size
  /// ```
  Size get size => MediaQuery.sizeOf(this);

  /// Returns the [EdgeInsets] of this [MediaQueryData].
  ///
  /// ```dart
  /// EdgeInsets padding = context.padding
  /// ```
  EdgeInsets get padding => MediaQuery.paddingOf(this);
}
