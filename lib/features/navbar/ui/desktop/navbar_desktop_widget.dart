import 'package:flutter/material.dart';

import 'package:versatilewebsite/design/utils/app_colors.dart';
import 'package:versatilewebsite/design/widgets/scroll_functionality.dart';

// ignore: must_be_immutable
class NavBarDesktopWidget extends StatefulWidget {
  String header;
  NavBarDesktopWidget({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  State<NavBarDesktopWidget> createState() => _NavBarDesktopWidgetState();
}

class _NavBarDesktopWidgetState extends State<NavBarDesktopWidget> {
  static const AssetImage versatileLogo =
      AssetImage("assets/images/versatile_logo.png");
  @override
  Widget build(BuildContext context) {
    print("rakib");
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;


    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Row(
            children: [
              // SizedBox(width: 70,),
              // Icon(Icons.menu),

              SizedBox(
                height: 50,
                width: 50,
                child: Image(image: versatileLogo),
              ),

              Text(
                "  Versatile Labs ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
          // navlogo(),
          Row(
            children: [
              navButton("Home", widget.header, context,0),
              navButton("Services", widget.header, context,h*0.6),
              navButton('Portfolio', widget.header, context,h*1.7),
              navButton('Blog', widget.header, context,h*2.7),

              navButton('About', widget.header, context,h*7),
              // navButton('Blog', widget.header, context,h*4.5),
              SizedBox(
                width: w <= 1000 ? 5 : 40,
              ),

              Container(
                height: 45,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: ElevatedButton(
                    style: borderButtonStyle,
                    onPressed: () {
                      Scroll().scrollToSection(h*4.6);
            setState(() {});
                    },
                    child: Text(
                      "Contact sales >",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 30,),
            ],
          ),
        ],
      ),
    );
  }

  Widget navButton(String text, String header, w,double value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: TextButton(
          onPressed: () {
             Scroll().scrollToSection(value);
            setState(() {});
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                // Change the text color when hovered
                if (states.contains(MaterialState.hovered)) {
                  return AppColors.greenish; // Customize hover text color
                }
                return (text == header)
                    ? AppColors.greenish
                    : Colors.black; // Default text color
              },
            ),
          ),
          child: Text(text,
              style: const TextStyle(
                fontSize: 18,
              )),
        ),
      ),
    );
  }

  // Widget navlogo(){
  ButtonStyle borderButtonStyle = ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          // Change the text color when hovered
          if (states.contains(MaterialState.hovered)) {
            return Color.fromARGB(
                255, 148, 235, 151); // Customize hover text color
          }
          return Colors.white; // Default text color
        },
      ),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(8),
      )));
}
