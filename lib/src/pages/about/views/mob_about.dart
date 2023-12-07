import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';

class MobAbout extends StatelessWidget {
  const MobAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MobAppBar(),
      body: Center(
        child: SingleChildScrollView(),
      ),
    );
  }
}
