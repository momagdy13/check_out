import 'package:check_out/Feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
