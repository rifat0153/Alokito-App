class GiftException implements Exception {
  GiftException({this.message = 'Something Went wrong'});

  final String? message;

  @override
  String toString() {
    return 'Gift Receiver Exception { message: $message }';
  }
}
