// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HightlightContainer extends StatefulWidget {
  final String topic;
  final String imagePath;
  final Color backgroundColor;

  const HightlightContainer({
    Key? key,
    required this.topic,
    required this.imagePath,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  State<HightlightContainer> createState() => _HightlightContainerState();
}

class _HightlightContainerState extends State<HightlightContainer> {
  @override
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

  bool isHovered = false;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        width: w<1200?w / 2.6:w/2.6,
        height: 265,
        transform: isHovered ? hoverTransform : nonHoverTransform,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border(
                right: BorderSide(color: Colors.black, width: 0.5),
                left: BorderSide(color: Colors.black, width: 0.5),
                top: BorderSide(color: Colors.black, width: 0.5),
                bottom: BorderSide(color: Colors.black, width: 3))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FittedBox(
                        fit: BoxFit.scaleDown,
                      child: Text(
                        widget.topic,
                        style: TextStyle(
                            fontSize: w>1200?33:20,
                            height: 1.4,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Learn more",
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/images/right.png",fit: BoxFit.fitHeight,))
                      ],
                    )
                  ],
                ),
               Container(
                          height: w>1200?125:90,
                          width: 130,
                          child: Image.asset(widget.imagePath,fit: BoxFit.fitHeight,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
