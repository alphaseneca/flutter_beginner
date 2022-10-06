import 'package:flutter/material.dart';
import 'package:login_app/screens/loginscreen.dart';

void main() {
  runApp(loginApp());
}

class loginApp extends StatelessWidget {
  const loginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginApp",
      home: loginpage(),
    );
  }
}
