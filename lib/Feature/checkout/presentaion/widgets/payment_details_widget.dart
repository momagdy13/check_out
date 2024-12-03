import 'package:check_out/Feature/checkout/presentaion/widgets/payment_details_header.dart';
import 'package:flutter/material.dart';

class PaymentDetailsWidget extends StatefulWidget {
  const PaymentDetailsWidget({super.key});

  @override
  State<PaymentDetailsWidget> createState() => _PaymentDetailsWidgetState();
}

class _PaymentDetailsWidgetState extends State<PaymentDetailsWidget> {
  int activeIndex = 0;
  bool isActive = true;

  List<String> item = const [
    'assets/images/card.svg',
    'assets/images/Group.svg',
    'assets/images/SVGRepo_iconCarrier.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
          itemCount: item.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: PaymentDetailsHeader(
                    isActive: activeIndex == index, image: item[index]),
              ),
            );
          }),
    );
  }
}
