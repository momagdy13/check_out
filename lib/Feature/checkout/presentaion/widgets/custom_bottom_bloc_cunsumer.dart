import 'dart:math';

import 'package:check_out/Feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/Feature/checkout/presentaion/manger/cubit/payment_cubit.dart';
import 'package:check_out/Feature/checkout/presentaion/manger/cubit/payment_cubit.dart';
import 'package:check_out/Feature/checkout/presentaion/screens/thank_you.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlockConsumer extends StatelessWidget {
  const CustomButtonBlockConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ThankYou();
          }));
        } else if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print(state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomButton(
            isLoading: state is PaymentLoading ? true : false,
            buttonText: 'Continue',
            onTap: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                      amount: '100',
                      currency: 'USD',
                      customerId: 'cus_RKZPmFYrcHVEfi');

              BlocProvider.of<PaymentCubit>(context)
                  .makePayment(paymentIntentInputModel);
            });
      },
    );
  }
}
