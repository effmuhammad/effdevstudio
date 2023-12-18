import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';

class MobContribution extends StatelessWidget {
  const MobContribution({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MobAppBar(),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Contribution',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This is the contribution page.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
