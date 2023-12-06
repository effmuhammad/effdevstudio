import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/about/about.dart';
import 'package:effdevstudio/src/pages/contribution/contribution.dart';
import 'package:effdevstudio/src/pages/home/home.dart';
import 'package:effdevstudio/src/pages/portfolio/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('id')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const MainApp(),
      ),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppThemeData().lightTheme,
      darkTheme: AppThemeData().darkTheme,
      themeMode: ref.watch(themeMode),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/about': (context) => const About(),
        '/contact': (context) => const About(),
        '/portfolio': (context) => const Portfolio(),
        '/contribution': (context) => const Contribution(),
      },
    );
  }
}
