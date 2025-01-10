import 'package:flutter/material.dart';

import '../logic/cell.dart';

/// A widget to display a [Cell].
class CellWidget extends StatelessWidget {
  final Cell cell;
  const CellWidget({super.key, required this.cell});

  final double size = 40;
  final Color colour = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color: colour,
      child: Center(
        child: Text('${cell.status.name}\n'
            '${cell.coord}'),
      ),
    );
  }
}
