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
      body: Column(
        children: [
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.1,
            ),
          ),
          Flexible(
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: BoardWidget(
                  board: Board(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
