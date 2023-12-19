import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/about/views/widgets/header_greetings_about.dart';
import 'package:effdevstudio/src/pages/about/views/widgets/photo_about.dart';
import 'package:effdevstudio/src/pages/widgets/des_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesAbout extends ConsumerWidget {
  const DesAbout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;

    Widget header() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PhotoAbout(),
            const SizedBox(width: 60.0),
            HeaderGreetingsAbout(
              animatedTextColor: isLightTheme
                  ? AppThemeData.appSecondaryColor
                  : AppThemeData.appSecondaryColorAccent,
            ),
          ],
        );

    return Scaffold(
      appBar: const DesAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              header(),
            ],
          ),
        ),
      ),
    );
  }
}
