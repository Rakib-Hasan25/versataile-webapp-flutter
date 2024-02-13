import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:versatilewebsite/design/constants/app_animation.dart';
import 'package:versatilewebsite/design/utils/app_colors.dart';
import 'package:versatilewebsite/design/widgets/highlight_container_widget.dart';
import 'package:versatilewebsite/design/widgets/hover_container_widget.dart';

class IntroDesktopWidget extends StatefulWidget {
  const IntroDesktopWidget({super.key});

  @override
  State<IntroDesktopWidget> createState() => _IntroDesktopWidgetState();
}

class _IntroDesktopWidgetState extends State<IntroDesktopWidget> {
  @override
  Widget build(BuildContext context) {
       double w = MediaQuery.of(context).size.width;
    return Container(
       padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height*1.85,
      child: Stack(
        children: [
          
          Positioned(
               right: w<1200?2:120,
              top: 70,
            child: SizedBox(
              height: w<1200?300:400,
              width: 400,
              child: const Align(
                alignment: Alignment.topCenter,
                child: RiveAnimation.asset(AppAnimations.introAnimation),
              ),
            ),
          ),
           Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY:2),
              child: const SizedBox(),
            ),
          ),


          Positioned(
            left: 55,
              top: 50,
            child: SizedBox(
               height: 400,
                width: 550,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                 Container(
                  height: 40,
                  width: 220,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 215, 248, 214),
                  borderRadius: BorderRadius.circular(10)
                  
                  ),
                  child:  Center(child: Text("Get Designed By The Best", style: TextStyle(color: AppColors.greenish,fontWeight:FontWeight.w900),textAlign: TextAlign.center,)),
                 ),
                  SizedBox(height:20 ,),

                  Text("We Shape the\nPerfect Solutions",style: TextStyle(fontFamily:"Poppins",fontSize: 50 ),),
                  SizedBox(height:10 ,),
                  Text("Versatile labs is a custom mobile app and website\ndevelopment company that has been helping clients \nall over the world to reach their goals since 2023.\nStart growing your business with us 👇",style: TextStyle(color: const Color.fromARGB(255, 50, 47, 47),fontSize: 17 ),),

                   SizedBox(height:20 ,),

                  HoverContainer(name: "GET A QUOTATION",),

                  
        

                ],
              ),
            ),
          ),



          Positioned(
            left: 55,
            bottom: 210,
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    Row(
                    children: [
                     Container(
                      width: 100,
                      decoration: BoxDecoration(color:  const Color.fromARGB(255, 101, 207, 105)),
                      child: Center(child: Text("Services",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
                      SizedBox(width: 20,),

                      Text("At our agency, we offer a range of services to help businesses\ngrow and succeed online. These services include:",style: TextStyle(fontSize: 15,color:const Color.fromARGB(255, 59, 57, 57)))

                      // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      
                    ],
                  ),  

                  SizedBox(height: 40,),

                  Row(
                    children: [
                      HightlightContainer ( topic: "Web Development\nServices",imagePath: "assets/images/web_development_services.png",backgroundColor: const Color.fromARGB(255, 230, 222, 222),),
                      SizedBox(width:20,),
                      HightlightContainer(topic: "UI/UX Design", imagePath: "assets/images/web_development_services.png",backgroundColor: const Color.fromARGB(255, 101, 207, 105),),
                      SizedBox(width:20,),
                      // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      
                    ],
                  ),

                  SizedBox(height: 30,),
                     Row(
                    children: [
                      HightlightContainer(topic: "Custom App\nDevelopment",imagePath: "assets/images/web_development_services.png",backgroundColor: const Color.fromARGB(255, 101, 207, 105),),
                      SizedBox(width:20,),
                      HightlightContainer(topic: "Application \nMaintainance\nand Support", imagePath: "assets/images/web_development_services.png",backgroundColor:const Color.fromARGB(255, 230, 222, 222),),
                      SizedBox(width:20,),
                      // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      
                    ],
                  ),


                ],
              ),
              
              ),
          )
          
          ],
      ),
    );
  }





//   Widget highlightContainer(BuildContext context, String topic, String
//       imagePath ) {
//     double w = MediaQuery.of(context).size.width;
//     final nonHoverTransform = Matrix4.identity();
//     final hoverTransform = Matrix4.identity()..translate(0,-10,0);

//  bool isHovered = false;
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       onEnter: (_) => setState(() => isHovered = true),
//       onExit: (_) => setState(() => isHovered = false),
//       child: AnimatedContainer(
//         width: w /2.6,
//         height: 280,
//         transform: isHovered? hoverTransform :nonHoverTransform,
//         duration: const Duration(milliseconds: 200),
//         padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(15),
//             border: Border(
//               right: BorderSide(color: Colors.black,width: 0.5),
//               left: BorderSide(color: Colors.black,width: 0.5),
//               top: BorderSide(color: Colors.black,width: 0.5),
//               bottom: BorderSide(color: Colors.black,width:3))
            
//             ),
      
//         child: 
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Flexible(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           topic,
//                           style: const TextStyle(
//                               fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
//                         ),
//                         const SizedBox(height: 50),
                       
//                         Row(children: [
      
//                            Text(
//                             "Learn more",
//                           style: const TextStyle(
//                               fontSize: 17,  ),
//                         ),
      
//                         SizedBox(width: 10,),
//                               SizedBox(
//                                 height: 40,
//                                 width:40,
//                                 child: Image.asset("assets/images/right.png"))
                        
//                         ],)
//                       ],
//                     ),
//                     SizedBox(
//                       height: 130,
//                       width: 130,
//                       child: Image.asset(imagePath))
              
//                   ],
//                 ),
//               ),
//             ),
          
        
//       ),
//     );
//   }







}