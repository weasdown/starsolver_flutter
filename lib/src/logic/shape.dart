import 'package:flutter/material.dart';

import 'board.dart';
import 'cell.dart';

/// One of the nine shapes within a [Board], that contains several [Cell]s.
class Shape {
  final int index;
  final List<Cell> cells;
  final Color colour;

  Shape({required this.index, required this.cells, required this.colour});

  /// Gets whether the [Shape] is a special shape, where a star or dot can be instantly located.
  bool get isSpecial =>
      throw UnimplementedError('Shape.isSpecial is not yet implemented.');
}
