import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailFiled(),
          passwordField(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  TextField passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Passord',
      ),
    );
  }

  TextField emailFiled() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'me@test.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
