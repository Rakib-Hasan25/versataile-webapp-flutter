import 'package:flutter/material.dart';
import 'package:versatilewebsite/features/blogs/blogs_widget.dart';
import 'package:versatilewebsite/features/contact_us/contact_us_widget.dart';
import 'package:versatilewebsite/features/intro/intro_widget.dart';
import 'package:versatilewebsite/features/portfolio/protfolio_widget.dart';
import 'package:versatilewebsite/features/testimonials/testimonials_widgets.dart';

import '../navbar/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBarWidget(header: "Home"),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  IntroWidget(),
                  ProtfolioWidget(),
                  BlogsWidgets(),
                  TestimonialsWidgets(),

                  // HighlightsWidget(),
                  // TechStackWidget(),
                  // VideosWidget(),
                  ContactUsWidget()
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
