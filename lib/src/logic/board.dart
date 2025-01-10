import 'cell.dart';
import 'cell_group.dart';

/// The board that a puzzle takes place within.
class Board {
  Board()
      : rows = List<BoardRow>.from(
          List<int>.generate(dimension, (int index) => index).map(
            (int rowIndex) => BoardRow(index: rowIndex),
          ),
        ) {
    List<Cell> cells = [];

    for (BoardRow row in rows) {
      cells.addAll(row.cells);
    }

    this.cells = cells;
  }

  static const int dimension = 9;

  late final List<Cell> cells;
  final List<BoardRow> rows;

  @override
  String toString() => 'A Board';
}
