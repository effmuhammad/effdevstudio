import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/pages/widgets/social_profiles.dart';
import 'package:flutter/material.dart';

class HeaderGreetingsAbout extends StatelessWidget {
  const HeaderGreetingsAbout({super.key, required this.animatedTextColor});
  final Color animatedTextColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedTextKit(
          totalRepeatCount: 1,
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              "about.header.greetings".tr(),
              textStyle: TextStyle(
                fontFamily: 'SourceCodePro',
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
                color: animatedTextColor,
              ),
              speed: const Duration(milliseconds: 250),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SelectableText(
          "about.header.title".tr(),
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w800,
            fontSize: 45.0,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        SelectableText(
          "about.header.subtitle".tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 40),
        const SocialProfiles(),
      ],
    );
  }
}
