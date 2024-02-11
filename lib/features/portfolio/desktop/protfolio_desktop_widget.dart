import 'package:flutter/material.dart';
import 'package:versatilewebsite/design/widgets/protfolio_card_widget.dart';

class ProtfolioDesktopWidget extends StatefulWidget {
  const ProtfolioDesktopWidget({super.key});

  @override
  State<ProtfolioDesktopWidget> createState() => _ProtfolioDesktopWidgetState();
}

class _ProtfolioDesktopWidgetState extends State<ProtfolioDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: w / 30),
        height: MediaQuery.of(context).size.height * 1.2,
        child: Stack(children: [
         
          Positioned(
            left: 55,
            top: 1,
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                    Row(
                    children: [
                     Container(
                      width: 120,
                      decoration: BoxDecoration(color:  const Color.fromARGB(255, 101, 207, 105)),
                      child: Center(child: Text("Portfolio",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
                      SizedBox(width: 20,),

                      Text("Embark on a visual journey. Each project tells a story of innovation and\nexcellence, showcasing our commitment to crafting success.",style: TextStyle(fontSize: 15,color:const Color.fromARGB(255, 59, 57, 57)))

                      // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      
                    ],
                  ),  

                  SizedBox(height: 40,),

                  Row(
                    children: [
                      ProtfolioCardWidget(title: "Versatile Labs", imagePath: "assets/images/Screenshot 2024-02-05 175521.png", description: "It is an website made by flutter"),
                      SizedBox(width:20,),
                      ProtfolioCardWidget(title: "Versatile Labs", imagePath: "assets/images/Screenshot 2024-02-05 175521.png", description: "It is an website made by flutter"),

                      // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      
                    ],
                  ),

                  SizedBox(height: 30,),
                     Row(
                    children: [

                      ProtfolioCardWidget(title: "Versatile Labs", imagePath: "assets/images/Screenshot 2024-02-05 175521.png", description: "It is an website made by flutter"),

                      SizedBox(width:20,),
                      ProtfolioCardWidget(title: "Versatile Labs", imagePath: "assets/images/Screenshot 2024-02-05 175521.png", description: "It is an website made by flutter"),

                      SizedBox(width:20,),
                      
                    ],
                  ),


                ],
              ),
              
              ),
          ),
          Positioned(
            bottom: 80,
            right: 100,
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(color: Colors.black,
              
              borderRadius: BorderRadius.circular(10)
              ),
              child: Row(children: [
                SizedBox(width: 20,),
              Text("See all Protfolios",style: TextStyle(color: Colors.white),),
                SizedBox(width: 5,),

              Icon(Icons.arrow_forward,color: Colors.white,)
                        ],),
            ))
                
        ]
        )
        );
  }
}
