
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:versatilewebsite/features/portfolio/desktop/protfolio_desktop_widget.dart';
import 'package:versatilewebsite/features/portfolio/mobile/protfolio_mobile_widget.dart';



class ProtfolioWidget extends StatelessWidget {

  const ProtfolioWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => ProtfolioDesktopWidget(),
      tablet: (p0) => ProtfolioMobileWidget(),
      mobile: (p0) => ProtfolioMobileWidget(),
    );
  }
}