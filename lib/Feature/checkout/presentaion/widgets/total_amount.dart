import 'package:check_out/core/utlis/style.dart';
import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Style.style24,
        ),
        const Spacer(),
        Text(
          value,
          style: Style.style24,
        )
      ],
    );
  }
}
