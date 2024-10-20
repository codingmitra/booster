import 'package:flutter/widgets.dart';

/// A [Gap] may be used in place of SizedBox.square().
class Gap extends SizedBox {
  /// Creates a [Gap] widget.
  /// [v] is the size of the space.
  ///
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Hello World!'),
  ///     Gap(8),
  ///     Text('Hello World!'),
  ///   ],
  /// )
  /// ```
  const Gap(double? v, {super.key, super.child}) : super.square(dimension: v);
}
