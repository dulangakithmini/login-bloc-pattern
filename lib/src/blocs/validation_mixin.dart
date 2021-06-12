import 'dart:async';

class ValidationMixin {
  /// StreamTransformer to validate email
  final StreamTransformer<String, String> emailValidator =
      StreamTransformer.fromHandlers(
          handleData: (String email, EventSink sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a Valid Email');
    }
  });

  /// StreamTransformer to validate password
  final StreamTransformer<String, String> passwordValidator =
      StreamTransformer.fromHandlers(
          handleData: (String password, EventSink sink) {
    if (password.length > 8) {
      sink.add(password);
    } else {
      sink.addError('Password must at least have 8 characters!');
    }
  });
}
