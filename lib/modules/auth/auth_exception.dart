class AuthException implements Exception {
  final String? message;

  AuthException({this.message = 'Something Went wrong'});

  @override
  String toString() {
    return 'Auth Exception { message: $message }';
  }
}
