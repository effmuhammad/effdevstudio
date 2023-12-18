import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/view_models/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const MobAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;
    return AppBar(
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              iconSize: 30,
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu_rounded),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'EffDev Studio',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isLightTheme
                          ? AppThemeData.appPrimaryColor
                          : AppThemeData.appPrimaryColorAccent,
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
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }
}
