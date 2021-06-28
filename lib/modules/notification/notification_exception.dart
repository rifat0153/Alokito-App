class NotificationException implements Exception {
  final String? message;

  NotificationException({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Notification Exception { message: $message }';
  }
}
