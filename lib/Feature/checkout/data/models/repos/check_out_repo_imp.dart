import 'package:check_out/Feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/Feature/checkout/data/models/repos/check_out_repo.dart';
import 'package:check_out/core/errors/errors.dart';
import 'package:check_out/core/utlis/stripe_service.dart';
import 'package:dartz/dartz.dart';

class CheckOutRepoImp extends CheckOutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
