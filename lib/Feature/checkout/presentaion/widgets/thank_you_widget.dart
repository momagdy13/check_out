import 'package:check_out/Feature/checkout/presentaion/widgets/circle_ckeck.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_dash_line.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/order_info_item.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/total_amount.dart';
import 'package:check_out/core/utlis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouWidget extends StatelessWidget {
  const ThankYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: 350,
        height: 700,
        decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              const SizedBox(
                height: 66,
              ),
              const Text(
                'Thank You!',
                style: Style.style25,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Your transaction was successful",
                style: Style.style20,
              ),
              const SizedBox(
                height: 20,
              ),
              const OrderInfoItem(title: 'Date', value: '01/24/2023'),
              const SizedBox(
                height: 20,
              ),
              const OrderInfoItem(title: 'Time', value: '10:15 AM'),
              const SizedBox(
                height: 20,
              ),
              const OrderInfoItem(title: 'To', value: 'Mohamed Magdy'),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              const Total(title: 'Total', value: r'$50.97'),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 305,
                height: 72,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              'Credit Card',
                              style: Style.style18,
                            ),
                            Text(
                              'Mastercard **78',
                              style: Style.styleSemi16,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/SVGRepo_iconCarrier.png'),
                  Container(
                    width: 113,
                    height: 58,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1.50, color: Color(0xFF34A853)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'PAID',
                        style: Style.style24
                            .copyWith(color: const Color(0xFF34A853)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .2 - 100,
              )
            ],
          ),
        ),
      ),

      // Effect On Screen //
      Positioned(
          left: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          )),
      Positioned(
          right: -20,
          bottom: MediaQuery.sizeOf(context).height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          )),
      Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          left: 20 + 8,
          right: 20 + 8,
          child: const DashLine()),
      const Positioned(right: 0, left: 0, top: -50, child: CircleCheck()),
      // Effect On Screen //
    ]);
  }
}
