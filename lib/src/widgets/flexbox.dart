import 'package:flutter/widgets.dart';

/// A [FlexRow] may be used in place of [Row]. It has a [gap] property which ads a gap between the children.
class FlexRow extends Flex {
  /// A [FlexRow] may be used in place of [Row]. It has a [gap] property which ads a gap between the children.
  ///
  /// Example:
  /// ```dart
  /// FlexRow(
  ///   gap: 16,
  ///   children: [
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: 'bada55'.toColor,
  ///     ),
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: '5eabed'.toColor,
  ///     ),
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: 'facade'.toColor,
  ///     ),
  ///   ],
  /// )
  /// ```
  FlexRow({
    double gap = 0,
    bool reversed = false,
    List<Widget> children = const [],
    super.key,
    super.textDirection,
    super.textBaseline,
    super.clipBehavior,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.mainAxisAlignment,
    super.verticalDirection,
  }) : super(
          direction: Axis.horizontal,
          children: (reversed ? children.reversed : children)
              .indexed
              .map((w) => gap > 0 && w.$1 > 0
                  ? [SizedBox.square(dimension: gap), w.$2]
                  : [w.$2])
              .expand((w) => w)
              .toList(),
        );
}

/// A [FlexColumn] may be used in place of [Column]. It has a [gap] property which ads a gap between the children.
class FlexColumn extends Flex {
  /// A [FlexColumn] may be used in place of [Column]. It has a [gap] property which ads a gap between the children.
  ///
  /// Example:
  /// ```dart
  /// FlexColumn(
  ///   gap: 16,
  ///   children: [
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: 'bada55'.toColor,
  ///     ),
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: '5eabed'.toColor,
  ///     ),
  ///     Container(
  ///       height: 100,
  ///       width: 100,
  ///       color: 'facade'.toColor,
  ///     ),
  ///   ],
  /// )
  /// ```
  FlexColumn({
    double gap = 0,
    bool reversed = false,
    List<Widget> children = const [],
    super.key,
    super.textDirection,
    super.textBaseline,
    super.clipBehavior,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.mainAxisAlignment,
    super.verticalDirection,
  }) : super(
          direction: Axis.vertical,
          children: (reversed ? children.reversed : children)
              .indexed
              .map((w) => gap > 0 && w.$1 > 0
                  ? [SizedBox.square(dimension: gap), w.$2]
                  : [w.$2])
              .expand((w) => w)
              .toList(),
        );
}
