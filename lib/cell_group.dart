import 'package:starsolver_flutter/cell.dart';

import 'board.dart';

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

class BoardRow extends LinearCellGroup {
  BoardRow({
    required super.index,
  }) : super(
          cells: List<Cell>.from(
            List<int>.generate(Board.dimension, (int index) => index).map(
              (int horizIndex) =>
                  Cell(coord: Coordinate(x: horizIndex, y: index)),
            ),
          ),
        );
}
