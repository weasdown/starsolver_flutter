import 'package:flutter/material.dart';

import 'board.dart';

/// An individual cell within a [Board].
class Cell extends StatelessWidget {
  final Coordinate coord;
  final CellStatus status;

  const Cell({super.key, required this.coord}) : status = CellStatus.blank;

  final double size = 40;
  final Color colour = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color: colour,
      child: Center(child: Text(status.name)),
    );
  }
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
}
