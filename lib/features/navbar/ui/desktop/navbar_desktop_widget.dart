// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:versatilewebsite/design/utils/app_colors.dart';

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
   static const AssetImage versatileLogo = AssetImage("assets/images/versatile_logo.png");
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                "Versatile Labs ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
          // navlogo(),
          Row(
            children: [
              navButton("Home", widget.header),
              navButton("Services", widget.header),
              navButton('Portfolio', widget.header),
              navButton('About', widget.header),
              navButton('Blog', widget.header),
              SizedBox(
                width: 40,
              ),

              Container(
                height: 45,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: ElevatedButton(
                    style: borderButtonStyle,
                    onPressed: () {},
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

  Widget navButton(String text, String header) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: TextButton(
          onPressed: () {
            setState(() {});
          },
          style: ButtonStyle(
            // Customize the TextButton style
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
              style: TextStyle(
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
