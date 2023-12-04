import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeSwitch {
  static void switchTheme(BuildContext context, WidgetRef ref) {
    var brightness = Theme.of(context).brightness;
    if (brightness == Brightness.light) {
      ref.read(themeMode.notifier).state = ThemeMode.dark;
    } else if (brightness == Brightness.dark) {
      ref.read(themeMode.notifier).state = ThemeMode.light;
    }
  }
}
