import 'dart:async';

class ValidationMixin {
  final StreamTransformer<String, String> emailValidator =
      StreamTransformer.fromHandlers(
          handleData: (String email, EventSink sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a Valid Email');
    }
  });
}
