class GiftRecordException implements Exception {
  GiftRecordException({this.message = 'Something Went wrong'});
  final String? message;

  @override
  String toString() {
    return 'GiftRecord Exception { message: $message }';
  }
}
