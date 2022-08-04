import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  ResponsiveLayout({
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          return mobileView;
        } else if (constraints.maxWidth < 1100) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
