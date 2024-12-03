import 'package:check_out/Feature/checkout/data/models/ephemelar_key_model/init_payment_sheet_input_model.dart';
import 'package:check_out/Feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/Feature/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:check_out/core/utlis/api.dart';
import 'package:check_out/core/utlis/const.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final Api api = Api();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    Map<String, dynamic> data = await api.post(
        url: '${Constant.baseUrl}/payment_intents',
        body: paymentIntentInputModel.toJson(),
        token: Constant.secretKey,
        contentType: 'application/x-www-form-urlencoded');

    var paymentIntentModel = PaymentIntentModel.fromJson(data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            customerId: initPaymentSheetInputModel.customerId,
            customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKey,
            paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
            merchantDisplayName: 'Mohamed'));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var initPSM = InitPaymentSheetInputModel(
        customerId: paymentIntentInputModel.customerId,
        clientSecret: paymentIntentModel.clientSecret!,
        ephemeralKey:
            'ek_test_YWNjdF8xUDczdkhSdkNsRHlEMWZhLHB4SEU4cTVOWUxIa2FpUjY2Tm50aXNQamdCd0VFMGo_00AWjngYdY');
    await initPaymentSheet(initPaymentSheetInputModel: initPSM);
    await displayPaymentSheet();
  }
}
