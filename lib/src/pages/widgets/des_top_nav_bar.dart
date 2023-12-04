import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DesTopNavBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  const DesTopNavBar(this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('EffDev Studio'),
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              children: [
                const Text('nav.home').tr(),
                const Text('nav.about').tr(),
                const Text('nav.contact').tr(),
                const Text('nav.portfolio').tr(),
                const Text('nav.blog').tr(),
              ],
            ),
          ),
          IconButton(
            onPressed: () => print('object'),
            icon: const Icon(Icons.light_mode),
          ),
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
