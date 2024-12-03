import 'package:check_out/Feature/checkout/presentaion/widgets/build_app_bar.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/thank_you_widget.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});
  static String id = 'thankYouScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
          title: '',
          onTap: () {
            Navigator.pop(context);
          }),
      body: const Center(child: ThankYouWidget()),
    );
  }
}
