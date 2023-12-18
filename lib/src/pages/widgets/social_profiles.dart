import 'package:effdevstudio/src/core/static/social_links.dart';
import 'package:effdevstudio/src/pages/widgets/button_icon.dart';
import 'package:flutter/material.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        ButtonIcon(name: 'dev', url: SocialLinks.dev).returnButton(),
        const SizedBox(width: 20.0),
        // ButtonIcon(name: 'hashnode', url: DataValues.hashnodeURL)
        //     .returnButton(),
        // const SizedBox(width: 10.0),
        ButtonIcon(name: 'github', url: SocialLinks.github).returnButton(),
        const SizedBox(width: 20.0),
        ButtonIcon(name: 'linkedin', url: SocialLinks.linkedin).returnButton(),
        const SizedBox(width: 20.0),
        // ButtonIcon(name: 'twitter', url: DataValues.twitterURL).returnButton(),
        // const SizedBox(width: 10.0),
        ButtonIcon(name: 'youtube', url: SocialLinks.youtube).returnButton(),
        const SizedBox(width: 20.0),
        // ButtonIcon(name: 'telegram', url: DataValues.telegramURL)
        //     .returnButton(),
        // const SizedBox(width: 20.0),
        // ButtonIcon(name: 'facebook', url: DataValues.facebookURL)
        //     .returnButton(),
        // const SizedBox(width: 20.0),
        ButtonIcon(name: 'instagram', url: SocialLinks.instagram)
            .returnButton(),
      ],
    );
  }
}
