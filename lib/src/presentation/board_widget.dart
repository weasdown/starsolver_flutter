import 'package:flutter/material.dart';

import '../logic/board.dart';
import '../logic/cell.dart';
import 'cell_widget.dart';

/// A widget to display a [Board].
class BoardWidget extends StatelessWidget {
  final Board board;
  const BoardWidget({super.key, required this.board});

  final double spacingWithin = 8;
  final double spacingAround = 40.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        spacingAround,
        spacingAround,
        spacingAround,
        0,
      ),
      child: GridView.count(
        mainAxisSpacing: spacingWithin,
        crossAxisSpacing: spacingWithin,
        crossAxisCount: Board.dimension,
        children: List<CellWidget>.from(
          board.cells.map((Cell cell) => CellWidget(cell: cell)),
        ),
      ),
    );
  }
}
