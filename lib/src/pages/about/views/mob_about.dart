import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/about/views/widgets/programming_language_chip.dart';
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

    Widget header() => Container(
          padding: const EdgeInsets.all(40),
          child: Column(
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
          ),
        );

    Widget content() {
      final textTheme = Theme.of(context).textTheme;
      headLargeTextSpan(text) => TextSpan(
            text: text,
            style: textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: isLightTheme
                  ? AppThemeData.appSecondaryColor
                  : AppThemeData.appSecondaryColorAccent,
            ),
          );
      titleLargeTextSpan(text) => TextSpan(
            text: text,
            style: textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          );
      bodyTextSpan(text) => TextSpan(
            text: text,
            style: textTheme.bodyLarge,
          );

      final List<String> coreSkills =
          'about.content.core-skills-body'.tr().split(',');

      return Container(
        padding: const EdgeInsets.all(40),
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText.rich(
              TextSpan(
                children: [
                      headLargeTextSpan("about.content.about-me-head".tr()),
                      const TextSpan(text: '\n\n'),
                      bodyTextSpan("about.content.about-me-body".tr()),
                      const TextSpan(text: '\n\n\n'),
                      headLargeTextSpan("about.content.core-skills-head".tr()),
                      const TextSpan(text: '\n\n'),
                    ] +
                    List.generate(coreSkills.length,
                        (index) => bodyTextSpan('- ${coreSkills[index]}\n')),
              ),
            ),
            SelectableText.rich(
              TextSpan(
                children: [
                  titleLargeTextSpan(
                      "about.content.programming-language-head".tr()),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const ProgrammingLanguageChip(),
            const SizedBox(height: 30),
            SelectableText.rich(
              TextSpan(
                children: [
                  headLargeTextSpan("about.content.about-web-head".tr()),
                  const TextSpan(text: '\n\n'),
                  bodyTextSpan("about.content.about-web-body".tr()),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: const MobAppBar(),
      drawer: const AppDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  List<String> parts =
                      'about.content.my-core-skills-body'.tr().split(',');
                  for (var part in parts) {
                    print(part);
                  }
                },
                child: const Text('English'),
              ),
              header(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
