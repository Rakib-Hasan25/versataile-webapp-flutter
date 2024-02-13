import 'package:flutter/material.dart';

class BlogsDesktopWidget extends StatefulWidget {
  const BlogsDesktopWidget({super.key});

  @override
  State<BlogsDesktopWidget> createState() => _BlogsDesktopWidgetState();
}

class _BlogsDesktopWidgetState extends State<BlogsDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(children: [
        Positioned(
          left: 55,
          top: 10,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 101, 207, 105)),
                        child: Center(
                            child: Text(
                          "Blogs",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Embark on a journey through tech wonders. Understand the magic of innovation, gain insights,\nand stay ahead in the ever-evolving digital landscape.",
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 59, 57, 57)))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 220,
                  width: w * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF191A23)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 25, bottom: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "For a local restaurant, we \nimplemented a targeted PPC\ncampaign that resulted in a \n50% increase in website \ntraffic and a 25% increase in sales.",
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Text(
                                  "learn more....",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            // Divider(height: 1,),
                            // SizedBox(width: 60,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "For a local restaurant, we \nimplemented a targeted PPC\ncampaign that resulted in a \n50% increase in website \ntraffic and a 25% increase in sales.",
                                  style: TextStyle(
                                      color: Colors.white60,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  "learn more....",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),

                            // SizedBox(width: 20,),
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    "For a local restaurant, we \nimplemented a targeted PPC\ncampaign that resulted in a \n50% increase in website \ntraffic and a 25% increase in sales.",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Text(
                                    "learn more...",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
