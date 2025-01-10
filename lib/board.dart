import 'package:flutter/material.dart';

import 'cell.dart';

/// The board that a puzzle takes place within.
class Board extends StatelessWidget {
  Board({super.key}) : cells = [Cell()];

  static const int dimension = 9;

  final List<Cell> cells;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: dimension,
      children: cells,
    );
  }
}
