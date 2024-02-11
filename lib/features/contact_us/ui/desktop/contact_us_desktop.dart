import 'package:flutter/material.dart';

class ContactUsDesktop extends StatefulWidget {
  const ContactUsDesktop({super.key});

  @override
  State<ContactUsDesktop> createState() => _ContactUsDesktopState();
}

class _ContactUsDesktopState extends State<ContactUsDesktop> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: w / 30),
        height: MediaQuery.of(context).size.height * 1.8,
        child: Stack(
          children: [
            Positioned(
              left: 55,
              top: 100,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 130,
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 101, 207, 105)),
                            child: Center(
                                child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ))),
                        SizedBox(
                          width: 20,
                        ),

                        Text(
                            "Connect with Us: Let's Discuss Your \nDigital Product Needs",
                            style: TextStyle(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 59, 57, 57)))

                        // highlightContainer(context, "dfssdf","sdfsd", "sdfsd"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 600,
                      width: w * 0.80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 233, 229, 229)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 500,
                              width: 550,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 80),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Name*",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      TextFormField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                          // labelText: 'name',
                                          hintText: 'name',
                                          filled: true,
                                          fillColor: Colors
                                              .white, // Set background color
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .black, // Set border color
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Email*",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          // labelText: 'name',
                                          hintText: 'Email',
                                          filled: true,
                                          fillColor: Colors
                                              .white, // Set background color
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .black, // Set border color
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Message*",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      TextFormField(
                                        controller: _messageController,
                                        decoration: InputDecoration(
                                          // labelText: 'name',
                                          hintText: 'Message',

                                          filled: true,
                                          fillColor: Colors
                                              .white, // Set background color
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .black, // Set border color
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                        minLines: 5,
                                        maxLines: 5,
                                      ),
                                      // SizedBox(
                                      //   height: 20,
                                      // ),
                                      SizedBox(height: 16.0),
                                      SizedBox(
                                        width: 400,
                                        height: 50,
                                        child: ElevatedButton(
                                          // style: ElevatedButtonSty,
                                          onPressed: () {
                                            // String text1 = _textController1.text;
                                            // String text2 = _textController2.text;
                                            // String text3 = _textController3.text;
                                            // print('Field 1: $text1');
                                            // print('Field 2: $text2');
                                            // print('Field 3: $text3');
                                          },

                                          child: Text(
                                            'Send Message',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),

                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                  0xFF191A23), // Background color
                                              // Text color
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              )),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),

                            // SizedBox(width: 200,),
                            // SizedBox(
                            //   width: w*0.27,
                            //   height: 500,
                            //   child: Image.asset(
                            //       "assets/images/Illustration1.png"),
                            // ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 3,
              bottom: 700,
              child: SizedBox(
                height: 400,
                width: 400,
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/images/Illustration1.png")),
              ),
            ),
            Positioned(
                bottom: 2,
                left: 45,
                child: Container(
                  height: 430,
                  width: w * 0.80,
                  decoration: BoxDecoration(
                    color: const Color(0xFF191A23),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                        // Adjust the value as needed
                        ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 30, right: 40, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        "assets/images/versatile_logo.png")
                                        
                                        ),
                                        SizedBox(width: 5,),
                                Text(
                                  "Versatile Labs",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("About us",
                                    style: textstyle()),
                               SizedBox(
                                  width: 20,
                                ),
                                Text("Protfolio",
                                    style: textstyle()),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Services",
                                    style: textstyle()),
                               SizedBox(
                                  width: 20,
                                ),
                                Text("Blog",
                                    style: textstyle()),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Pricing",
                                    style: textstyle()),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                        "assets/images/facebook (1).png",color: const Color.fromARGB(255, 208, 208, 208))),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                        "assets/images/linkedin (2).png",color: const Color.fromARGB(255, 208, 208, 208))),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                        "assets/images/twitter.png",color: const Color.fromARGB(255, 208, 208, 208),)),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 101, 207, 105)),
                                    child: Center(
                                        child: Text(
                                      "Contact Us",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ))),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("Email:mailversatilelabs@gmail.com",
                                    style: textstyle2()),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("phone: 01644194327",
                                    style: textstyle2()),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "Address: Hathazari, Chittagong, Bangladesh",
                                    style:textstyle2()),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text("@2024 VersatileLabs.All Rights Reserved",
                                style: textstyle2()),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Privacy policy",
                                style: textstyle()),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }

  TextStyle textstyle() {
    return TextStyle(
      fontSize: 17,
      color: const Color.fromARGB(255, 208, 208, 208),
      decoration: TextDecoration.underline,
      decorationColor: const Color.fromARGB(
          255, 208, 208, 208), // Optional: Set underline color
      decorationThickness: 1.0,
    );
  }

  TextStyle textstyle2() {
    return TextStyle(
      fontSize: 17,
      color: const Color.fromARGB(255, 208, 208, 208),
      decorationColor: const Color.fromARGB(
          255, 208, 208, 208), // Optional: Set underline color
    );
  }


}



