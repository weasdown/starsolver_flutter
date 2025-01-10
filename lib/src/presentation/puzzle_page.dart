import 'package:flutter/material.dart';

import '../logic/board.dart';
import 'board_widget.dart';

/// An app page that displays a puzzle.
class PuzzlePage extends StatelessWidget {
  const PuzzlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Star Battle Puzzle'),
      ),
      body: BoardWidget(board: Board()),
    );
  }
}
