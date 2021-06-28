class GiftReceiverException implements Exception {
  final String? message;

  GiftReceiverException({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Gift Receiver Exception { message: $message }';
  }
}
