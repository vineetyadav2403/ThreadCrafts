import 'package:flutter/material.dart';
import 'package:threadcarfts/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobileWidget;
  final Widget desktopWidget;
  const ResponsiveLayout({super.key, required this.mobileWidget,
    required this.desktopWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < mobileWidth) {
        return mobileWidget;
      } else {
        return desktopWidget;
      }
    }
    );
  }
}
