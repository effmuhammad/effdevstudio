import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobPortfolio extends ConsumerWidget {
  const MobPortfolio({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;
    return const Scaffold(
      appBar: MobAppBar(),
      drawer: AppDrawer(),
      body: SingleChildScrollView(),
    );
  }
}
