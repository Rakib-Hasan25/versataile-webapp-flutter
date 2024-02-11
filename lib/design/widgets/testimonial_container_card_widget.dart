import 'package:flutter/material.dart';
import 'package:versatilewebsite/design/utils/app_colors.dart';

class TestimonialContainerCard extends StatelessWidget {
  const TestimonialContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    return Container(
                          width: w / 3.8,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: AppColors.greenish, width: 2.5)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 80, // Set the desired width
                                        height: 80, // Set the desired height
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            "assets/images/versatile_logo.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Alex jounkey",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Founder of Robs",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      "assets/images/versatile_logo.png",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Mangcoding is a biggest company in Indonesia, who provides the services in Development \nWebsite,Shopify and Wordpress",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ]),
                          ),
                        );
  }
}