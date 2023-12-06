import 'package:adaptive_screen_orientation/adaptive_screen_orientation.dart';
import 'package:effdevstudio/src/pages/about/views/des_about.dart';
import 'package:effdevstudio/src/pages/about/views/mob_about.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreenOrientation(
      mobilePortrait: MobAbout(),
      desktop: DesAbout(),
    );
  }
}
