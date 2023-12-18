import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

class ButtonIcon {
  final String name;
  final String url;
  final double height;
  final double width;

  ButtonIcon(
      {required this.name,
      required this.url,
      this.height = 30.0,
      this.width = 30.0});

  Widget returnButton() {
    final Uri uri = Uri.parse(url);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(uri)) {
            throw 'Could not launch $uri';
          }
          log("Direct to: $uri");
        },
        child: Tooltip(
          message: uri.toString(),
          child: Image.asset(
            'assets/icons/$name.png',
            height: height,
            width: width,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
