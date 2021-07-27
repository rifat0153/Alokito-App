class GiftGiverException implements Exception {
  final String? message;

  GiftGiverException({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Gift Receiver Exception { message: $message }';
  }
}
