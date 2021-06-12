import 'dart:async';

class Bloc {
  final StreamController<String> emailController = StreamController<String>();
  final StreamController<String> passwordController =
      StreamController<String>();
}
