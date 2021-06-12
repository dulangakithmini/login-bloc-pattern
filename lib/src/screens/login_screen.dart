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

  Container submitButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Submit'),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
        ),
      ),
      margin: EdgeInsets.only(top: 20),
    );
  }

  TextField passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
    );
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
            ),
            keyboardType: TextInputType.emailAddress,
          );
        });
  }
}
