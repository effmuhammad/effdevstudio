import 'package:adaptive_screen_orientation/adaptive_screen_orientation.dart';
import 'package:effdevstudio/src/pages/home/views/des_home.dart';
import 'package:effdevstudio/src/pages/home/views/mob_home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AdaptiveScreenOrientation(
      mobilePortrait: MobHome(),
      desktop: DesHome(),
    );
  }
}
