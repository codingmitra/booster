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
  /// Text('Hello, World!').toExpanded(flex: 1)
  /// ```
  Widget toExpanded({int? flex}) => Expanded(flex: flex ?? 1, child: this);

  /// Converts a child of a [Row], [Column], or [Flex] widget to a [Flexible].
  ///
  /// ```dart
  /// Text('Hello, World!').toFlexible()
  /// Text('Hello, World!').toFlexible(flex: 1, fit: FlexFit.loose)
  /// ```
  Widget toFlexible({int? flex, FlexFit? fit}) => Flexible(flex: flex ?? 1, fit: fit ?? FlexFit.loose, child: this);
}
