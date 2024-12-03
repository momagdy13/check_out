import 'package:check_out/Feature/checkout/presentaion/screens/my_cart.dart';
import 'package:check_out/Feature/checkout/presentaion/screens/payment_details.dart';
import 'package:check_out/Feature/checkout/presentaion/screens/thank_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey =
      'pk_test_51P73vHRvClDyD1faQ4gFllri6wEoRwNMBvbFziPnT54YkTaswpfd5AiVB3W5zNUWZOQlZOvXldXbLeZBlR368kg900nqxPoY7H';

  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyCart.id,
      debugShowCheckedModeBanner: false,
      routes: {
        PaymentDetails.id: (contex) => const PaymentDetails(),
        ThankYou.id: (contex) => const ThankYou()
      },
      home: const MyCart(),
    );
  }
}
