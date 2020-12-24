import 'package:aves/model/settings/entry_background.dart';
import 'package:aves/widgets/common/fx/borders.dart';
import 'package:aves/widgets/common/fx/checkered_decoration.dart';
import 'package:flutter/material.dart';

class EntryBackgroundSelector extends StatefulWidget {
  final ValueGetter<EntryBackground> getter;
  final ValueSetter<EntryBackground> setter;

  const EntryBackgroundSelector({
    @required this.getter,
    @required this.setter,
  });

  @override
  _EntryBackgroundSelectorState createState() => _EntryBackgroundSelectorState();
}

class _EntryBackgroundSelectorState extends State<EntryBackgroundSelector> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<EntryBackground>(
        items: _buildItems(context),
        value: widget.getter(),
        onChanged: (selected) {
          widget.setter(selected);
          setState(() {});
        },
      ),
    );
  }

  List<DropdownMenuItem<EntryBackground>> _buildItems(BuildContext context) {
    const radius = 12.0;
    return [
      EntryBackground.white,
      EntryBackground.black,
      EntryBackground.checkered,
      EntryBackground.transparent,
    ].map((selected) {
      Widget child;
      switch (selected) {
        case EntryBackground.transparent:
          child = Icon(
            Icons.clear,
            size: 20,
            color: Colors.white30,
          );
          break;
        case EntryBackground.checkered:
          child = ClipOval(
            child: DecoratedBox(
              decoration: CheckeredDecoration(
                checkSize: radius,
              ),
            ),
          );
          break;
        default:
          break;
      }
      return DropdownMenuItem<EntryBackground>(
        value: selected,
        child: Container(
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            color: selected.isColor ? selected.color : null,
            border: AvesCircleBorder.build(context),
            shape: BoxShape.circle,
          ),
          child: child,
        ),
      );
    }).toList();
  }
}