import 'package:effdevstudio/src/pages/widgets/des_appbar.dart';
import 'package:flutter/material.dart';

class DesPortfolio extends StatelessWidget {
  const DesPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DesAppBar(),
      body: Center(
        child: SingleChildScrollView(),
      ),
    );
  }
}
