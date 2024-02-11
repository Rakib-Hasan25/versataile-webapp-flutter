import 'package:flutter/material.dart';

class NavBarMobileWidget extends StatefulWidget {
  const NavBarMobileWidget({super.key});

  @override
  State<NavBarMobileWidget> createState() => _NavBarMobileWidgetState();
}

class _NavBarMobileWidgetState extends State<NavBarMobileWidget> {
  @override
  Widget build(BuildContext context) {
    return

        // AppBar(
        //   : Row(
        //     children: [Text(
        //       "Versatile Labs ",
        //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //     ),

        //     ],
        //   )

        // );
        Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Versatile Labs ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
            onTap: () {
              // showBottomSheet(
              //     context: context,
              //     builder: (context) {
              //       return Container(
              //         color: Colors.black,
              //         height: 400,
              //       );
              //     });

              _showCustomUpperSheet(context);

              // _showCustomUpperSheet(context);
            },
            child: Icon(Icons.menu))
      ]),
    );
  }
}

void _showCustomUpperSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return _buildCustomUpperSheetContent();
    },
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
  );
}

Widget _buildCustomUpperSheetContent() {
  
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
    
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -kToolbarHeight),
          end: Offset(0, -1.2),
        ).animate(
          ModalRoute.of(context)!.animation!,
        ),
        child: Container(
          height: 225,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  height: 0.5,
                ),
                // Add your custom content here
                Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                Text(
                  'Portfolio',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                Text(
                  'Blog',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Divider(
                  height: 1,
                ),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
