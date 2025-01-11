import 'cell.dart';
import 'cell_group.dart';
import 'shape.dart';

/// The board that a puzzle takes place within.
class Board {
  Board({required this.shapes}) : cells = _buildCells() {
    if (shapes.length != 9) {
      throw ArgumentError('The Board must have exactly 9 Shapes.');
    }
  }

  // /// Constructor that does not set all the [cells] to blank.
  // Board._({required this.shapes, required this.cells});
  //
  // /// Builds a copy of an existing [Board].
  // factory Board.copy(Board board) =>
  //     Board._(cells: board.cells, shapes: board.shapes);

  /// Builds a list of 81 blank [Cell]s.
  static List<Cell> _buildCells() {
    List<Cell> cells = [];
    for (int vertIndex = 0; vertIndex < Board.dimension; vertIndex++) {
      for (int horizIndex = 0; horizIndex < Board.dimension; horizIndex++) {
        cells.add(Cell(coord: Coordinate(x: horizIndex, y: vertIndex)));
      }
    }
    return cells;
  }

  /// The [Board]'s individual cells.
  late final List<Cell> cells;

  /// The length of a side of the [Board]'s grid.
  static const int dimension = 9;

  /// The rows in the [Board].
  List<Row> get rows => List<Row>.generate(
        dimension,
        (int index) => Row.fromCells(
          index: index,
          cells: cells.where((Cell cell) => cell.coord.y == index).toList(),
        ),
      ).toList();

  /// The shapes in the [Board], defined as areas that must each finish with exactly two stars.
  final List<Shape> shapes;

  @override
  String toString() => 'A Board';
}
