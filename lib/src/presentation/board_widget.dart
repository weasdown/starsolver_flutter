import 'package:flutter/material.dart';

import '../logic/board.dart';
import '../logic/cell.dart';
import 'cell_widget.dart';

/// A widget to display a [Board].
class BoardWidget extends StatelessWidget {
  final Board board;
  const BoardWidget({super.key, required this.board});

  final double spacing = 8;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      crossAxisCount: Board.dimension,
      children: List<CellWidget>.from(
        board.cells.map((Cell cell) => CellWidget(cell: cell)),
      ),
    );
  }
}
