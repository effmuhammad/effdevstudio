import 'package:adaptive_screen_orientation/adaptive_screen_orientation.dart';
import 'package:effdevstudio/src/pages/contribution/views/des_contribution.dart';
import 'package:effdevstudio/src/pages/contribution/views/mob_contribution.dart';
import 'package:flutter/material.dart';

class Contribution extends StatelessWidget {
  const Contribution({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreenOrientation(
      mobilePortrait: MobContribution(),
      desktop: DesContribution(),
    );
  }
}
