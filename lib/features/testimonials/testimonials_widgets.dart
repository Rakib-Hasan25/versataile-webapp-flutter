
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:versatilewebsite/features/testimonials/desktop/testimonals_desktop_widget.dart';
import 'package:versatilewebsite/features/testimonials/mobile/testimonals_mobile_widget.dart';

class TestimonialsWidgets extends StatelessWidget {
  const TestimonialsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => TestimonialsDesktopWidgets(),
      tablet: (p0) => TestimonialsMobileWidgets(),
      mobile: (p0) => TestimonialsMobileWidgets()
      
      
      );
      
    
  }
}