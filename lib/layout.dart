import 'package:portfolio/widgets/laptop.dart';
import 'package:portfolio/widgets/responsive.dart';
import 'package:portfolio/widgets/mobile.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
          laptop: Laptop(),
          mobile: Mobile()
      ),
    );
  }
}