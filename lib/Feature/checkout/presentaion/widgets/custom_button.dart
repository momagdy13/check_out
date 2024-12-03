import 'package:check_out/core/utlis/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      this.isLoading = false});
  final String buttonText;
  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: 350,
              height: 73,
              decoration: ShapeDecoration(
                color: const Color(0xFF34A853),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                  child: Text(
                buttonText,
                style: Style.style22,
              )),
            ),
    );
  }
}
