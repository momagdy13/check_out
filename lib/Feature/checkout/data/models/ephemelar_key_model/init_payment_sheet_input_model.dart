class InitPaymentSheetInputModel {
  String customerId, ephemeralKey, clientSecret;
  InitPaymentSheetInputModel(
      {required this.customerId,
      required this.clientSecret,
      required this.ephemeralKey});
}
