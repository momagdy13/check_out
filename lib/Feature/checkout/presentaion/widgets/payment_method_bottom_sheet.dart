import 'package:check_out/Feature/checkout/presentaion/widgets/custom_bottom_bloc_cunsumer.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_button.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/payment_details_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethodBottonSheet extends StatelessWidget {
  const PaymentMethodBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentDetailsWidget(),
          SizedBox(
            height: 24,
          ),
          CustomButtonBlockConsumer()
        ],
      ),
    );
  }
}
