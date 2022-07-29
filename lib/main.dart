import 'package:flutter/material.dart';
import 'package:responsiveui/responsive/desktop_view.dart';
import 'package:responsiveui/responsive/mobile_view.dart';
import 'package:responsiveui/responsive/responsive_layout.dart';
import 'package:responsiveui/responsive/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileView: const MobileView(),
        tabletView: const TabletView(),
        desktopView: const DesktopView(),
      ),
    );
  }
}
