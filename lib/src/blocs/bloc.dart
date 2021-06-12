import 'dart:async';

class Bloc {
  final StreamController<String> _emailController = StreamController<String>();
  final StreamController<String> _passwordController =
      StreamController<String>();
}
