class PaymentIntentInputModel {
  final String amount, currency, customerId;

  PaymentIntentInputModel(
      {required this.customerId, required this.amount, required this.currency});
  toJson() {
    return {'amount': amount, 'currency': currency, 'customer': customerId};
  }
}
