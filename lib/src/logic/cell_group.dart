import 'board.dart';
import 'cell.dart';

/// The most generic form of cell group.
class CellGroup {
  List<Cell> cells;

  CellGroup({required this.cells});
}

/// A cell group where all the cells are in a line of width one cell.
class LinearCellGroup extends CellGroup {
  final int index;

  LinearCellGroup({required this.index, required super.cells});

  Cell operator [](int index) => cells[index];
}

/// A column in a [Board].
class BoardColumn extends LinearCellGroup {
  BoardColumn({required super.index})
      : super(
          cells: List<Cell>.from(
            List<int>.generate(Board.dimension, (int index) => index).map(
              (int vertIndex) =>
                  Cell(coord: Coordinate(x: index, y: vertIndex)),
            ),
          ),
        );
}

/// A row in a [Board].
class Row extends LinearCellGroup {
  /// Basic constructor.
  Row({
    required super.index,
  }) : super(
          cells: List<Cell>.from(
            List<int>.generate(Board.dimension, (int index) => index).map(
              (int horizIndex) =>
                  Cell(coord: Coordinate(x: horizIndex, y: index)),
            ),
          ),
        );

  /// Constructor to build a [Row] from a list of [Cell]s.
  Row.fromCells({required super.index, required super.cells});
}
