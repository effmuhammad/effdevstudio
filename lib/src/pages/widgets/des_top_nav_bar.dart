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
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('EffDev Studio'),
              ],
            ),
          ),
          IconButton(
              onPressed: () => print('object'), icon: const Icon(Icons.search)),
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
