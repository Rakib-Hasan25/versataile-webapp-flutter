import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:versatilewebsite/features/contact_us/ui/desktop/contact_us_desktop.dart';
import 'package:versatilewebsite/features/contact_us/ui/mobile/contact_us_mobile.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ContactUsDesktop(),
      mobile: (p0) => const ContactUsMobile(),
    );
  }
}