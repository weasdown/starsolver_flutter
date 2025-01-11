import 'package:flutter/material.dart';
import 'package:starsolver_flutter/logic.dart';

import 'board_widget.dart';

/// An app page that displays a puzzle.
class PuzzlePage extends StatelessWidget {
  final Board board;
  const PuzzlePage({super.key, required this.board});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Star Battle Puzzle'),
      ),
      body: BoardWidget(board: board),
    );
  }
}
