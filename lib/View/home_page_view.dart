import 'package:flutter/material.dart';
import 'package:sampark_web/Pages/mobile_home_page.dart';
import 'package:sampark_web/Pages/web_home_page.dart';
import 'package:sampark_web/config/responsive_layout.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      web: WebHomePage(),
    );
  }
}
