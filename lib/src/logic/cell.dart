import 'board.dart';

/// An individual cell within a [Board].
class Cell {
  final Coordinate coord;
  final CellStatus status;

  const Cell({required this.coord}) : status = CellStatus.blank;
}

/// The three possible statuses for a Cell.
enum CellStatus {
  blank(text: ' '),
  dot(text: '•'),
  star(text: '*');

  final String text;

  const CellStatus({required this.text});
}

/// A [Cell]'s coordinate in the [Board].
class Coordinate {
  final int x;
  final int y;

  Coordinate({required this.x, required this.y});

  ///Returns whether the Coordinate is within the Board, so is valid.
  bool isWithinBoard() {
    bool componentWithinBoard({required int xOrY}) {
      if ((xOrY >= Board.dimension) || (xOrY < 0)) {
        return false;
      } else {
        return true;
      }
    }

    if (componentWithinBoard(xOrY: x) || componentWithinBoard(xOrY: y)) {
      return true;
    } else {
      return false;
    }
  }

  /// Returns a [String] representation of the [Coordinate].
  @override
  String toString() => '($x, $y)';
}
