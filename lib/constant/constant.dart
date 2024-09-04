import 'package:flutter/material.dart';

class Constant {
  static const String mainBaseUrl = "https://www.cgprojects.in/lens8/api/dummy/";
  static const String appName = "Nanny Vanny";
    static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }


}
