import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    Widget navbarButton(String text, VoidCallback onPressed) {
      return Container(
        height: Theme.of(context).appBarTheme.toolbarHeight,
        constraints: const BoxConstraints(
          minWidth: 100,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      );
    }

    return AppBar(
      automaticallyImplyLeading: false,
      title: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('EffDev Studio'),
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [
                  navbarButton('nav.about'.tr(), () => print('About')),
                  navbarButton('nav.contact'.tr(), () => print('Contact')),
                  navbarButton('nav.portfolio'.tr(), () => print('Portfolio')),
                  navbarButton(
                      'nav.contribution'.tr(), () => print('Contribution')),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                print('preferredSize');
              },
              icon: const Icon(Icons.light_mode),
            ),
          ],
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.black,
    );
  }
}
