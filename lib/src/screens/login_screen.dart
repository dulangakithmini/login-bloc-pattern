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
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'me@test.com',
            ),
            keyboardType: TextInputType.emailAddress,
          );
        });
  }
}
