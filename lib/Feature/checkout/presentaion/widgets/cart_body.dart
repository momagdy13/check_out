import 'package:check_out/Feature/checkout/data/models/repos/check_out_repo_imp.dart';
import 'package:check_out/Feature/checkout/presentaion/manger/cubit/payment_cubit.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_button.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/order_info_item.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/payment_method_bottom_sheet.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/total_amount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset('assets/images/Group 6.png'),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            thickness: 2,
            color: Color(0xffC7C7C7),
            height: 34,
          ),
          const Total(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              // Navigator.pushNamed(context, PaymentDetails.id);
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CheckOutRepoImp()),
                      child: const PaymentMethodBottonSheet(),
                    );
                  });
            },
            buttonText: 'Complete Payment',
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
