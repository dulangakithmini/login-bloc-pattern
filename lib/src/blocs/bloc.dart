import 'dart:async';

class Bloc {
  final StreamController<String> _emailController = StreamController<String>();
  final StreamController<String> _passwordController =
      StreamController<String>();

  /// To abbreviate the access to the add function and the stream, can add getters to the class.
  /// When referencing changeEmail property, it returns the add function of the sink in the emailController
  /// Add data to stream
  void Function(String) get changeEmail => _emailController.sink.add;

  void Function(String) get changePassword => _passwordController.sink.add;

  /// Retrieve data from the stream
  Stream<String> get email => _emailController.stream;

  Stream<String> get password => _passwordController.stream;
}
