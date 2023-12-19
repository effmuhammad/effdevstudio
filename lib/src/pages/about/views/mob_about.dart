import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/about/views/widgets/header_greetings_about.dart';
import 'package:effdevstudio/src/pages/about/views/widgets/photo_about.dart';
import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobAbout extends ConsumerWidget {
  const MobAbout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;

    Widget header() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PhotoAbout(),
            const SizedBox(height: 30.0),
            HeaderGreetingsAbout(
              animatedTextColor: isLightTheme
                  ? AppThemeData.appSecondaryColor
                  : AppThemeData.appSecondaryColorAccent,
            ),
          ],
        );

    return Scaffold(
      appBar: const MobAppBar(),
      drawer: const AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              header(),
            ],
          ),
        ),
      ),
    );
  }
}
