import 'package:flutter/material.dart';
import 'screens/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Invent',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.deepPurple[300]
        ),
        body:LoginPage()
      ),
    );
  }
}
