import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter the email',
              border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              contentPadding: EdgeInsets.all(20)),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter the password',
              border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              contentPadding: EdgeInsets.all(20)),
        ),
        SizedBox(height: 12),
        MaterialButton(
          onPressed: () => null,
          color: Colors.blueAccent,
          child: Text(
            'GetIn',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
