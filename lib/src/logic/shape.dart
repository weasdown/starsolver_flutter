import 'dart:ui';

// import 'package:color/color.dart' as c;
import 'package:flutter/material.dart';

import 'cell.dart';
import 'board.dart';

/// One of the nine shapes within a [Board], that contains several [Cell]s.
class Shape {
  final int index;
  final List<Cell> cells;
  final Color colour;

  Shape({required this.index, required this.cells, required this.colour});

  /// Gets whether the [Shape] is a special shape, where a star or dot can be instantly located.
  bool get isSpecial =>
      throw UnimplementedError('Shape.isSpecial is not yet implemented.');
}

/// Gets a list of nine [Color]s for use in [Shape]s.
///
/// The [Color]s are spaced regularly around the colour wheel to have good
/// contrast against each other.
List<Color> get shapeColours {
  throw UnimplementedError('generateShapeColours is not yet implemented.');

  // double startH = 0;
  // double startS = 0;
  // double startL = 0;
  //
  // // Step round the hue circle by 40 degrees per colour, to get 9 regularly spaced colours.
  // final int delta = 40;
  //
  // List<c.Color> hslColors = List<c.Color>.generate(
  //   9,
  //   (int index) => c.Color.hsl(
  //     startH + index * delta,
  //     startS,
  //     startL,
  //   ),
  // );
  //
  // return List<Color>.from(
  //   hslColors.map(
  //       // FIXME fix colour output
  //       (c.Color hsl) => Color.from(alpha: 255, red: 0, green: 0, blue: 255)),
  // );
  //
  // // TODO remove dead colour code
  // // return List.generate(9, (int index) => const Color(0xFF42A5F5)
  // //     // Color.hsl(startH + index * delta, startS, startL)
  // //     //     Color.from(
  // //     //   alpha: 0,
  // //     //   red: 0,
  // //     //   green: 0,
  // //     //   blue: 255,
  // //     // ),
  // //     );
}

/// Gets a list of nine empty [Shape]s.
List<Shape> get testShapes => List<Shape>.generate(
      Board.dimension,
      (int index) =>
          Shape(index: index, cells: [], colour: shapeColours[index]),
    );
