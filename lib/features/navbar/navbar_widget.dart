// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/desktop/navbar_desktop_widget.dart';
import 'ui/mobile/navbar_mobile_widget.dart';

class NavBarWidget extends StatelessWidget {
 final String header;
  const NavBarWidget({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => NavBarDesktopWidget(header: header,),
      tablet: (p0) => NavBarMobileWidget(),
      mobile: (p0) => const NavBarMobileWidget(),
    );
  }
}
