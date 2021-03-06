import 'dart:async';

import 'package:login_bloc/src/blocs/validation_mixin.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with ValidationMixin {
  /// Change the StreamControllers into BehaviorSubjects in order to capture the latest email and password values that have been added to the controllers
  final BehaviorSubject<String> _emailController = BehaviorSubject<String>();
  final BehaviorSubject<String> _passwordController = BehaviorSubject<String>();

  // final StreamController<String> _emailController = StreamController<String>.broadcast();
  // final StreamController<String> _passwordController = StreamController<String>.broadcast();

  /// To abbreviate the access to the add function and the stream, can add getters to the class.
  /// When referencing changeEmail property, it returns the add function of the sink in the emailController
  /// Add data to stream
  void Function(String) get changeEmail => _emailController.sink.add;

  void Function(String) get changePassword => _passwordController.sink.add;

  /// Retrieve data from the stream
  // Stream<String> get email => _emailController.stream.transform(
  //     emailValidator) /* Can listen to only the events that come over the transformed stream */;
  //
  // Stream<String> get password =>
  //     _passwordController.stream.transform(passwordValidator);

  Stream<String> email;
  Stream<String> password;
  Stream<bool> submitValid;

  Bloc() {
    this.email = _emailController.stream.transform(emailValidator);
    this.password = _passwordController.stream.transform(passwordValidator);

    /// Returns true when both email and password are valid.
    this.submitValid =
        CombineLatestStream.combine2(email, password, (e, p) => true);

    /// Listen to submitValid
    // submitValid.listen((event) {
    //   print(event);
    // }, onError: (error) {
    //   print(error);
    // });
  }

  /// When the user click on submit, access  the email and password inside here
  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  /// Dispose StreamControllers
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

/// Single global instance
// final bloc = Bloc();
