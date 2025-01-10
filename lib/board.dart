import 'package:flutter/material.dart';

import 'cell.dart';
import 'cell_group.dart';

/// The board that a puzzle takes place within.
class Board extends StatelessWidget {
  Board({super.key})
      : rows = List<BoardRow>.from(
          List<int>.generate(dimension, (int index) => index).map(
            (int rowIndex) => BoardRow(index: rowIndex),
          ),
        ) {
    cells = () {
      List<Cell> cells = [];

      for (BoardRow row in rows) {
        cells.addAll(row.cells);
      }

      return cells;
    }();
  }

  static const int dimension = 9;

  late final List<Cell> cells;
  final List<BoardRow> rows;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: dimension,
      children: cells,
    );
  }
}
