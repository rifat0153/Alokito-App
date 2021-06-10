class NotificationError implements Exception {
  final String? message;

  NotificationError({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Auth Exception { message: $message }';
  }
}