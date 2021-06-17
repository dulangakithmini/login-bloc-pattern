import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Wrap MaterialApp by the Provider
    return Provider(
      child: MaterialApp(
        title: 'Login',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
          body: LoginScreen(),
        ),
      ),
    );

    // return MaterialApp(
    //   title: 'Login',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Login'),
    //     ),
    //     body: LoginScreen(),
    //   ),
    // );
  }
}
