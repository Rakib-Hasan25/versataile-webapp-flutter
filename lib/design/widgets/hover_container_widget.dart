// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  final String name;
  const HoverContainer({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        height: 40,
        width: 220,
        decoration: isHovered
            ? BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 2.0, // Set the border width
                ),
              )
            : BoxDecoration(color: Colors.green // Set the border width
                ),
        child: Center(
            child: Text(
          widget.name,
          style: TextStyle(
              color: isHovered ? Colors.green : Colors.white,
              fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
