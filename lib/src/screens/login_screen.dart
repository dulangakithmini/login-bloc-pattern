import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'me@test.com',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Passord',
            ),
          ),
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
}
