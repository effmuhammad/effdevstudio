import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FooterAbout extends StatelessWidget {
  const FooterAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const Divider(
          color: Colors.black12,
          thickness: 1,
        ),
        const SizedBox(height: 40),
        SelectableText(
          "about.footer.title".tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 10),
        SelectableText(
          "about.footer.subtitle".tr(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
