import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/core/theme/app_theme.dart';
import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:effdevstudio/src/pages/widgets/social_profiles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobPortfolio extends ConsumerWidget {
  const MobPortfolio({super.key});

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
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey, // Set border color
                      width: 5, // Set border width
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/portfolio/photo.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.all(1),
                  height: 200.0,
                  width: 200.0,
                ),
                const SizedBox(height: 30.0),
                Column(
                  children: [
                    AnimatedTextKit(
                      totalRepeatCount: 1,
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Hello World!, I\'m',
                          textStyle: TextStyle(
                            fontFamily: 'SourceCodePro',
                            fontWeight: FontWeight.w700,
                            fontSize: 24.0,
                            color: isLightTheme
                                ? AppThemeData.appSecondaryColor
                                : AppThemeData.appSecondaryColorAccent,
                          ),
                          speed: const Duration(milliseconds: 250),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const SelectableText(
                      "Effry Muhammad",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w800,
                        fontSize: 45.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    const SelectableText(
                      "Engineer | Developer | Content Creator",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SocialProfiles(),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
