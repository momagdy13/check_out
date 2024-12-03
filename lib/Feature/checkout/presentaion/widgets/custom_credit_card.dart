import 'dart:developer';
import 'package:check_out/Feature/checkout/presentaion/screens/thank_you.dart';
import 'package:check_out/Feature/checkout/presentaion/widgets/custom_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = true;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  CreditCardWidget(
        //       backgroundImage: 'assets/images/card.svg',
        //       cardBgColor: Colors.black, // Pass the path as a String
        //       cardNumber: cardNumber,
        //       expiryDate: expiryDate,
        //       cardHolderName: cardHolderName,
        //       cvvCode: cvvCode,
        //       showBackView: showBackView,
        //       isHolderNameVisible: true,
        //       animationDuration: const Duration(milliseconds: 300),
        //       onCreditCardWidgetChange: (value) {}),
        //   CreditCardForm(
        //       cardNumber: cardNumber,
        //       expiryDate: expiryDate,
        //       cardHolderName: cardHolderName,
        //       cvvCode: cvvCode,
        //       onCreditCardModelChange: (carditCardModel) {
        //         cardHolderName = carditCardModel.cardHolderName;
        //         expiryDate = carditCardModel.expiryDate;
        //         cvvCode = carditCardModel.cvvCode;
        //         cardNumber = carditCardModel.cardNumber;
        //         showBackView = carditCardModel.isCvvFocused;
        //         setState(() {});
        //       },
        //       formKey: formKey),

        const SizedBox(
          height: 20,
        ),
        CustomButton(
            buttonText: 'Pay',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pushNamed(context, ThankYou.id);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            })
      ],
    );
  }
}
