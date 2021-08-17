import 'package:flutter/material.dart';

const int ScreenSize = 800;

class ResponsiveWidget extends StatelessWidget {
  final Widget laptop;
  final Widget mobile;

  ResponsiveWidget({required this.laptop, required this.mobile});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < ScreenSize;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= ScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= ScreenSize) {
        return laptop;
      } else {
        return mobile;
      }
    });
  }
}