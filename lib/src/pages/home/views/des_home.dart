import 'package:easy_localization/easy_localization.dart';
import 'package:effdevstudio/src/core/states/theme_state.dart';
import 'package:effdevstudio/src/pages/widgets/des_appbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DesHome extends StatelessWidget {
  const DesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DesAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text('home.title.1').tr(),
                      Row(
                        children: [
                          const Text('Desktop Home'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/about');
                            },
                            child: const Text('About'),
                          ),
                          Consumer(
                            builder: (context, ref, _) {
                              return ElevatedButton(
                                  onPressed: () {
                                    var brightness =
                                        Theme.of(context).brightness;
                                    if (brightness == Brightness.light) {
                                      ref.read(themeMode.notifier).state =
                                          ThemeMode.dark;
                                    } else if (brightness == Brightness.dark) {
                                      ref.read(themeMode.notifier).state =
                                          ThemeMode.light;
                                    }
                                  },
                                  child: const Text('Change Theme'));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 600,
                    ),
                    child: Image.asset('assets/images/home_img.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
