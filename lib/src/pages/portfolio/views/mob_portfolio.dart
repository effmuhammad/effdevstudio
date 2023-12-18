import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:effdevstudio/src/pages/widgets/app_drawer.dart';
import 'package:effdevstudio/src/pages/widgets/mob_appbar.dart';
import 'package:flutter/material.dart';

class MobPortfolio extends StatelessWidget {
  const MobPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MobAppBar(),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 250.0,
                  width: 250.0,
                ),
                const SizedBox(height: 30.0),
                Column(
                  children: [
                    AnimatedTextKit(
                      totalRepeatCount: 1,
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Hello, I\'m',
                          // textStyle:
                          //    ,
                          speed: const Duration(milliseconds: 250),
                        ),
                      ],
                    ),
                    // SelectableText(
                    //   DataValues.headerName,
                    //   style: AppThemeData.darkTheme.textTheme.displayMedium,
                    //   textAlign: TextAlign.center,
                    // ),
                    // SelectableText(
                    //   DataValues.headerTitle,
                    //   textAlign: TextAlign.center,
                    //   style: AppThemeData.darkTheme.textTheme.titleLarge,
                    // ),
                    const SizedBox(height: 30.0),
                    // SizedBox(
                    //   height: 60,
                    //   width: 200,
                    //   child: ButtonViewMyCV(pdfUrl: 'assets/docs/myCV.pdf'),
                    // ),
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
