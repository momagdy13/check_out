import 'package:bloc/bloc.dart';
import 'package:check_out/Feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:check_out/Feature/checkout/data/models/repos/check_out_repo.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkOutRepo) : super(PaymentInitial());
  final CheckOutRepo checkOutRepo;

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    emit(PaymentLoading());
    var data = await checkOutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) => emit(PaymentFailure(errMessage: l.errorMessage)),
        (r) => emit(PaymentSuccess()));
  }
}
