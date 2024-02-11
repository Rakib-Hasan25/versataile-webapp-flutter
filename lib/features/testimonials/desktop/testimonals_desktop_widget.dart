import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:versatilewebsite/design/utils/app_colors.dart';
import 'package:versatilewebsite/design/widgets/testimonial_container_card_widget.dart';

class TestimonialsDesktopWidgets extends StatefulWidget {
  const TestimonialsDesktopWidgets({super.key});

  @override
  State<TestimonialsDesktopWidgets> createState() =>
      _TestimonialsDesktopWidgetsState();
}

class _TestimonialsDesktopWidgetsState
    extends State<TestimonialsDesktopWidgets> {
  int activeIndex = 0;
  final controller = CarouselController();
  List<Widget> card = [
    TestimonialContainerCard(),
    TestimonialContainerCard(),
    TestimonialContainerCard(),
    TestimonialContainerCard(),
    TestimonialContainerCard(),
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height * 1,
      child: Stack(children: [
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
                            color: const Color.fromARGB(255, 101, 207, 105)),
                        child: Center(
                            child: Text(
                          "Testimonials",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Hear from Our Satisfied Clients: Read Our Testimonials\nto Learn More about Our Services",
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 59, 57, 57)))
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
                        color: const Color(0xFF191A23)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider.builder(
                          carouselController: controller,
                          itemCount: card.length,
                          itemBuilder: (context, index, realIndex) {
                            return card[index];
                          },
                          options: CarouselOptions(
                            height: 300,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            viewportFraction: .4,
                            autoPlayInterval: Duration(seconds: 2),
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index),
                          ),
                        ),
                        // SizedBox(
                        //   height: 50,
                        // ),
                        // buildIndicator(),
                         SizedBox(
                          height: 50,
                        ),
                        buildButtons()
                      ],
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: card.length,
        effect: JumpingDotEffect(
          dotWidth: 20,
          dotColor: Colors.white,
          dotHeight: 20,
          activeDotColor: AppColors.greenish,
        ),
      );

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: previous,
            child: Icon(
              Icons.arrow_back,
              size: 32,
            ),
            style: TextButton.styleFrom(
              // backgroundColor: const Color.fromARGB(255, 59, 57, 57),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32)),
          ),
          SizedBox(width: 50,),

          buildIndicator(),


          SizedBox(width: 50,),

          // stretch
          //     ? Spacer()
          //     : SizedBox(
          //         width: 32,
          //       ),
          TextButton(
            onPressed: next,
            child: Icon(
              Icons.arrow_forward,
              size: 32,
            ),
            style: TextButton.styleFrom(
              // backgroundColor: const Color.fromARGB(255, 59, 57, 57),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32)),
          ),
        ],
      );

  void next() => controller.nextPage(duration: Duration(milliseconds: 500));
  void previous() =>controller.previousPage(duration: Duration(milliseconds: 500));
}
