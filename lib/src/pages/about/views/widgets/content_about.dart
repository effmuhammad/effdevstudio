import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/widgets/chips_wrap.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

class ContentAbout extends ConsumerWidget {
  const ContentAbout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final isLightTheme = ref.watch(themeMode) == ThemeMode.light;

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
      color: Colors.black12,
      child: Column(
        children: [
          const SizedBox(width: double.infinity),
          Container(
            padding: const EdgeInsets.all(40),
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
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
                          headLargeTextSpan(
                              "about.content.core-skills-head".tr()),
                          const TextSpan(text: '\n\n'),
                        ] +
                        List.generate(
                            coreSkills.length,
                            (index) =>
                                bodyTextSpan('- ${coreSkills[index]}\n')),
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
                const ChipsWrap(
                  chipIcons: [
                    Brands.python,
                    Brands.dart,
                    Brands.javascript,
                    Brands.c_programming,
                    Brands.cpp,
                  ],
                  chipTexts: [
                    'Python',
                    'Dart',
                    'Javascript',
                    'C',
                    'C++',
                  ],
                ),
                const SizedBox(height: 30),
                SelectableText.rich(
                  TextSpan(
                    children: [
                      titleLargeTextSpan("about.content.framework-head".tr()),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const ChipsWrap(
                  chipIcons: [
                    Brands.flutter,
                    Brands.django,
                    Brands.flask,
                    Brands.tensorflow,
                  ],
                  chipTexts: [
                    'Flutter',
                    'Django',
                    'Flask',
                    'Tensorflow',
                  ],
                ),
                const SizedBox(height: 30),
                SelectableText.rich(
                  TextSpan(
                    children: [
                      titleLargeTextSpan("about.content.tools-head".tr()),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const ChipsWrap(
                  chipIcons: [
                    Brands.git,
                    Brands.github,
                    Brands.gitlab,
                    Brands.notion,
                    Brands.jira,
                    Brands.visual_studio_code_2019,
                  ],
                  chipTexts: [
                    'Git',
                    'Github',
                    'Gitlab',
                    'Notion',
                    'Jira',
                    'Visual Studio Code',
                  ],
                ),
                const SizedBox(height: 50),
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
          ),
        ],
      ),
    );
  }
}
