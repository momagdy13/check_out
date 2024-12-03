import 'package:check_out/Feature/checkout/presentaion/widgets/build_app_bar.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_credit_card.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/payment_details_widget.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});
  static String id = 'paymentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
          title: 'Payment Details',
          onTap: () {
            Navigator.pop(context);
          }),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            PaymentDetailsWidget(),
            CustomCreditCard()
          ],
        ),
      ),
    );
  }
}
