import 'package:flutter/material.dart';

class PhotoAbout extends StatelessWidget {
  const PhotoAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey, // Set border color
          width: 5, // Set border width
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/portfolio/photo.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(1),
      height: 200.0,
      width: 200.0,
    );
  }
}
