
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:versatilewebsite/features/blogs/desktop/blogs_desktop_widget.dart';
import 'package:versatilewebsite/features/blogs/mobile/blogs_mobile_widget.dart';


class BlogsWidgets extends StatelessWidget {
  const BlogsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (context) {
        return const BlogsMobileWidgets();
      },
      desktop: (context) {
        return const BlogsDesktopWidget();
      },
      mobile: (context) {
        return const BlogsMobileWidgets();
      },
    );
  }
}