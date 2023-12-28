import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ChipsWrap extends StatelessWidget {
  const ChipsWrap({
    super.key,
    required this.chipIcons,
    required this.chipTexts,
  });
  final List<String> chipIcons;
  final List<String> chipTexts;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 15,
      runSpacing: 10,
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
