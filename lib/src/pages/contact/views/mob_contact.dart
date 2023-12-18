import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';

class MobContact extends StatelessWidget {
  const MobContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MobAppBar(),
      drawer: AppDrawer(),
      body: Center(
        child: SingleChildScrollView(),
      ),
    );
  }
}
