import 'package:flutter/material.dart';

import '../logic/cell.dart';

/// A widget to display a [Cell].
class CellWidget extends StatefulWidget {
  final Cell cell;

  const CellWidget({
    super.key,
    required this.cell,
    this.colour = Colors.cyan,
  });

  final Color colour;

  @override
  State<CellWidget> createState() => _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget> {
  final double size = 40;

  setStar() => setState(
        () => widget.cell.status = CellStatus.star,
      );

  setNextStatus() => setState(
        () => widget.cell.status = widget.cell.status.nextStatus,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color:
          // switch (widget.cell.status) {
          //   CellStatus.blank => Theme.of(context).canvasColor,
          //   CellStatus.dot => Colors.grey,
          //   CellStatus.star => Colors.greenAccent,
          // }
          widget.colour,
      child: GestureDetector(
        onTap: setNextStatus,
        onLongPress: setStar,
        child: Center(
          child: Text('${widget.cell.status.name}\n'
              '${widget.cell.coord}'),
        ),
      ),
    );
  }
}
