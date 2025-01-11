import 'package:starsolver_flutter/src/presentation/cell_widget.dart';

import 'board.dart';

/// An individual cell within a [Board].
class Cell {
  final Coordinate coord;
  CellStatus status;

  Cell({required this.coord}) : status = CellStatus.blank;

  /// Iterates the [Cell]'s [status] through the possible values of [CellStatus].
  void nextStatus() => status = status.nextStatus;
}

/// The three possible statuses for a Cell.
enum CellStatus {
  blank(text: ' ', value: 0),
  dot(text: '•', value: 1),
  star(text: '*', value: 2);

  final String text;
  final int value;

  const CellStatus({required this.text, required this.value});

  /// Gets the next value of [CellStatus], so it can be iterated when a
  /// [CellWidget] is tapped.
  CellStatus get nextStatus => CellStatus.values[value < 2 ? value + 1 : 0];
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
