// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProtfolioCardWidget extends StatefulWidget {
  final String title;
  final String imagePath;
  final String description;
  const ProtfolioCardWidget({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  State<ProtfolioCardWidget> createState() => _ProtfolioCardWidgetState();
}

class _ProtfolioCardWidgetState extends State<ProtfolioCardWidget> {
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
        width: w / 2.6,
        height: 290,
        transform: isHovered ? hoverTransform : nonHoverTransform,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border(
                right: BorderSide(color: Colors.black, width: 0.5),
                left: BorderSide(color: Colors.black, width: 0.5),
                top: BorderSide(color: Colors.black, width: 0.5),
                bottom: BorderSide(color: Colors.black, width: 3))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Flexible(
            child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                      Container(
                        height: 100,
                        width:w / 2.7 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green,width: 2)),
                        
                       child: Image.asset(widget.imagePath,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5,),
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 26,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    
                  ],
                ),
              
          ),
        ),
      ),
    );
  }
}
