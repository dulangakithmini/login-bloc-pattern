import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          submitButton(),
        ],
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Submit'),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
      ),
    );
  }

  Widget passwordField() {
    /// Implement a StreamBuilder
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            /// Add to the stream when the user inputs to the TextField
            onChanged: (String newValue) {
              bloc.changePassword(newValue);
            },
            decoration: InputDecoration(
              labelText: 'Password',

              /// Display errorText when the validation fails
              errorText: snapshot.error,
            ),
            obscureText: true,
          );
        });
  }

  Widget emailField() {
    /// StreamBuilder takes a stream and a builder function
    return StreamBuilder(
      /// Inside the bloc, there's a email stream
      stream: bloc.email,

      /// Any time the StreamBuilder sees a new event from email stream, it calls the builder function and re-renders itself.
      builder: (context, snapshot) {
        return TextField(
          /// When the user inputs to the Textfield, add the value to the stream
          onChanged: (String newValue) {
            bloc.changeEmail(newValue);
          },
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'me@test.com',

            /// When the stream emits an error message, pass it to errorText property
            errorText: snapshot.error,
          ),
          keyboardType: TextInputType.emailAddress,
        );
      },
    );
  }
}
