class GiftAskException implements Exception {
  final String? message;

  GiftAskException({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Auth Exception { message: $message }';
  }
}
