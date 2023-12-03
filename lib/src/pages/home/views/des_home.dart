import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesHome extends StatelessWidget {
  const DesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                onPressed: () => print('object'),
                icon: const Icon(Icons.search)),
          ],
        ),
        centerTitle: false,
      ),
      body: Row(
        children: [
          const Text('Desktop Home'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: const Text('About'),
          ),
          Consumer(builder: (context, ref, _) {
            return ElevatedButton(
                onPressed: () {
                  var brightness = Theme.of(context).brightness;
                  if (brightness == Brightness.light) {
                    ref.read(themeMode.notifier).state = ThemeMode.dark;
                  } else if (brightness == Brightness.dark) {
                    ref.read(themeMode.notifier).state = ThemeMode.light;
                  }
                },
                child: const Text('Change Theme'));
          })
        ],
      ),
    );
  }
}
