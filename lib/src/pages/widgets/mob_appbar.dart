import 'package:flutter/material.dart';

class MobAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu_rounded),
            ),
            const Text(
              'EffDev Studio',
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }
}
