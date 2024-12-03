import 'package:check_out/Feature/checkout/presentaion/widgets/build_app_bar.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});
  static String id = 'cartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const CartBody(),
    );
  }
}
