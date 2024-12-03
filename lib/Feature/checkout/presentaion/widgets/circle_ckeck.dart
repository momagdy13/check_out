import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleCheck extends StatelessWidget {
  const CircleCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: const Color(0xff34A853),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/Vector 11.svg',
            width: 40, // Makes the image smaller
            height: 40, // Makes the image smaller
            fit: BoxFit.contain, // Ensures the image maintains its aspect ratio
          ),
        ),
      ),
    );
  }
}
