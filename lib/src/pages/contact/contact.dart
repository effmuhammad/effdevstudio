import 'package:adaptive_screen_orientation/adaptive_screen_orientation.dart';
import 'package:effdevstudio/src/pages/contact/views/des_contact.dart';
import 'package:effdevstudio/src/pages/contact/views/mob_contact.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreenOrientation(
      mobilePortrait: MobContact(),
      desktop: DesContact(),
    );
  }
}
