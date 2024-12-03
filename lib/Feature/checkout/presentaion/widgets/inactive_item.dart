import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveItem extends StatelessWidget {
  const InactiveItem({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: Colors.black.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(15),
      )),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Center(child: SvgPicture.asset(image))),
    );
  }
}
