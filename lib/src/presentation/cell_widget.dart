import 'package:flutter/material.dart';

import '../logic/cell.dart';

/// A widget to display a [Cell].
class CellWidget extends StatefulWidget {
  final Cell cell;

  const CellWidget({super.key, required this.cell});

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
    final MaterialColor baseColour = Colors.purple;

    final CellStatus cellStatus = widget.cell.status;

    return GestureDetector(
      onTap: setNextStatus,
      onLongPress: setStar,
      child: Container(
        height: size,
        width: size,
        color:
            // switch (widget.cell.status) {
            //   CellStatus.blank => Theme.of(context).canvasColor,
            //   CellStatus.dot => baseColour[100],
            //   CellStatus.star => baseColour[400],
            // },
            baseColour[100],
        child: Center(
          child: Text(
            cellStatus.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          // Text('${widget.cell.status.name}\n'
          //     '${widget.cell.coord}'),
        ),
      ),
    );
  }
}
