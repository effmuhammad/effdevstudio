import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProgrammingLanguageChip extends StatelessWidget {
  const ProgrammingLanguageChip({super.key});

  static const List<String> chipIcons = [Brands.python, Brands.flutter];
  static const List<String> chipTexts = ['Python', 'Flutter'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 15,
      children: List.generate(
        chipTexts.length,
        (index) => Chip(
          clipBehavior: Clip.antiAlias,
          avatar: Brand(chipIcons[index]),
          label: Text(
            chipTexts[index],
          ),
          side: const BorderSide(style: BorderStyle.none),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.black26,
        ),
      ),
    );
  }
}
