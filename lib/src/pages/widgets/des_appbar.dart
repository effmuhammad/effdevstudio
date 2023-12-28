import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/view_models/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DesAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;

    Widget navbarButton(String text, VoidCallback onPressed) {
      return Container(
        constraints: const BoxConstraints(
          minWidth: 120,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: isLightTheme ? null : Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    final currentRoute = ModalRoute.of(context)?.settings.name;
    void navigateTo(String route) {
      if (currentRoute != route) {
        Navigator.pushNamed(context, route);
      } else {
        // Do nothing
      }
    }

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () => navigateTo('/'),
                  child: Text(
                    'EffDev Studio',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: isLightTheme
                          ? AppThemeData.appPrimaryColor
                          : AppThemeData.appPrimaryColorAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    children: [
                      navbarButton(
                        'nav.about'.tr(),
                        () => navigateTo('/about'),
                      ),
                      navbarButton(
                        'nav.contact'.tr(),
                        () => navigateTo('/contact'),
                      ),
                      navbarButton(
                        'nav.portfolio'.tr(),
                        () => navigateTo('/portfolio'),
                      ),
                      navbarButton(
                        'nav.contribution'.tr(),
                        () => navigateTo('/contribution'),
                      ),
                    ],
                  ),
                ),
                Consumer(builder: (context, WidgetRef ref, _) {
                  return IconButton(
                    iconSize: 25,
                    onPressed: () => ThemeSwitch.switchTheme(context, ref),
                    icon: const Icon(Icons.light_mode),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
      backgroundColor:
          isLightTheme ? const Color(0xFFF7F7F7) : const Color(0xFF373737),
    );
  }
}
