import 'package:adaptive_screen_orientation/adaptive_screen_orientation.dart';
import 'package:effdevstudio/src/pages/portfolio/views/des_portfolio.dart';
import 'package:effdevstudio/src/pages/portfolio/views/mob_portfolio.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreenOrientation(
      mobilePortrait: MobPortfolio(),
      desktop: DesPortfolio(),
    );
  }
}
