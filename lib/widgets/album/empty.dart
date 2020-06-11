import 'package:aves/widgets/common/icons.dart';
import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final AlignmentGeometry alignment;

  const EmptyContent({
    this.icon = AIcons.image,
    this.text = 'No images',
    this.alignment = const FractionalOffset(.5, .35),
  });

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF607D8B);
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 64,
            color: color,
          ),
          const SizedBox(height: 16),
          Text(
            text,
            style: const TextStyle(
              color: color,
              fontSize: 22,
              fontFamily: 'Concourse',
            ),
          ),
        ],
      ),
    );
  }
}
