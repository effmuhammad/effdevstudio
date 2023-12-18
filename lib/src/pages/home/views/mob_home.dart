import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/home/views/widgets/mob_action_button.dart';
import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobHome extends ConsumerWidget {
  const MobHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;
    return Scaffold(
      appBar: const MobAppBar(),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Image.asset(isLightTheme
                      ? 'assets/images/home_img.png'
                      : 'assets/images/home_img_dark.png'),
                ),
                const SizedBox(height: 20),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                    children: [
                      TextSpan(
                        text: 'home.title.1'.tr(),
                        style: TextStyle(
                          color: isLightTheme
                              ? AppThemeData.appPrimaryColor
                              : AppThemeData.appPrimaryColorAccent,
                        ),
                      ),
                      TextSpan(
                        text: ' ${'home.title.2'.tr()}',
                        style: TextStyle(
                          color: isLightTheme
                              ? AppThemeData.appSecondaryColor
                              : AppThemeData.appSecondaryColorAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'home.subtitle',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ).tr(),
                const SizedBox(height: 40),
                MobActionButton(
                  text: 'home.portfolio'.tr(),
                  bgColor: AppThemeData.appPrimaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, '/portfolio');
                  },
                ),
                MobActionButton(
                  text: 'home.contact-us'.tr(),
                  bgColor: AppThemeData.appSecondaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
