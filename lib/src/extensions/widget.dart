import 'package:flutter/widgets.dart';

/// Extensions for [Widget]
extension WidgetExtension on Widget {
  /// Converts a widget to a [Sliver].
  /// See [SliverToBoxAdapter]
  ///
  /// ```dart
  /// Text('Hello, World!').toSliver
  /// ```
  Widget get toSliver => SliverToBoxAdapter(child: this);

  /// Converts a child of a [Row], [Column], or [Flex] widget to an [Expanded].
  ///
  /// ```dart
  /// Text('Hello, World!').toExpanded()
  /// Text('Hello, World!').toExpanded(1)
  /// ```
  Widget toExpanded(int? n) => Expanded(flex: n ?? 1, child: this);

  /// Converts a child of a [Row], [Column], or [Flex] widget to a [Flexible].
  ///
  /// ```dart
  /// Text('Hello, World!').toFlexible()
  /// Text('Hello, World!').toFlexible(1, fit: FlexFit.loose)
  /// ```
  Widget toFlexible(int? n, {FlexFit? fit}) =>
      Flexible(flex: n ?? 1, fit: fit ?? FlexFit.loose, child: this);
}
