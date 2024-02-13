import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Scroll {
  static final ScrollController _scrollController = ScrollController();

  static ScrollController get scrollController => _scrollController;

   void scrollToSection(double offset) {
    // throw new Exception("sdfasdfsdafasdf");

      print("Scrolling to offset: $offset");
   

    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
