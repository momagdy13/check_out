import 'package:check_out/Feature/checkout/presentaion/widgets/active_item.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/inactive_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsHeader extends StatelessWidget {
  const PaymentDetailsHeader(
      {super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveItem(image: image) : InactiveItem(image: image);
  }
}
